"""
- Criado em 07/Fevereiro/2022
- Atualizado em 19/04/2023

@autor: Marco Mello e Paulo Santos


Regras:

1) O Arquivo ASM.txt não pode conter linhas iniciadas com caracteres ' ' ou '\n')
2) Linhas somente com comentários são excluídas 
3) Instruções sem comentário no arquivo ASM receberão como comentário no arquivo BIN a própria instrução
4) Exemplo de codigo invalido:
                            0.___JSR @14 #comentario1
                            1._#comentario2           << Invalido ( Linha somente com comentário )
                            2._                       << Invalido ( Linha vazia )
                            3.___JMP @5  #comentario3
                            4.___JEQ @9
                            5.___NOP
                            6.___NOP
                            7._                       << Invalido ( Linha vazia )
                            8.___LDI $5                 << Invalido ( Linha iniciada com espaço (' ') )
                            9._ STA $0
                            10.__CEQ @0
                            11.__JMP @2  #comentario4
                            12.__NOP
                            13.__ LDI $4                << Invalido ( Linha iniciada com espaço (' ') )
                            14.__CEQ @0
                            15.__JEQ @3
                            16.__#comentario5           << Invalido ( Linha somente com comentário )
                            17.__JMP @13
                            18.__NOP
                            19.__RET
                                
5) Exemplo de código válido (Arquivo ASM.txt):
                            0.___JSR @14 #comentario1
                            1.___JMP @5  #comentario3
                            2.___JEQ @9
                            3.___NOP
                            4.___NOP
                            5.___LDI $5
                            6.___STA $0
                            7.___CEQ @0
                            8.___JMP @2  #comentario4
                            9.___NOP
                            10.__LDI $4
                            11.__CEQ @0
                            12.__JEQ @3
                            13.__JMP @13
                            14.__NOP
                            15.__RET
                            
6) Resultado do código válido (Arquivo BIN.txt):
                            0.__tmp(0) := x"90E"; -- comentario1
                            1.__tmp(1) := x"605"; -- comentario3
                            2.__tmp(2) := x"709"; -- JEQ @9
                            3.__tmp(3) := x"000"; -- NOP
                            4.__tmp(4) := x"000"; -- NOP
                            5.__tmp(5) := x"405"; -- LDI $5
                            6.__tmp(6) := x"500"; -- STA $0
                            7.__tmp(7) := x"800"; -- CEQ @0
                            8.__tmp(8) := x"602"; -- comentario4
                            9.__tmp(9) := x"000"; -- NOP
                            10._tmp(10) := x"404"; -- LDI $4
                            11._tmp(11) := x"800"; -- CEQ @0
                            12._tmp(12) := x"703"; -- JEQ @3
                            13._tmp(13) := x"60D"; -- JMP @13
                            14._tmp(14) := x"000"; -- NOP
                            15._tmp(15) := x"A00"; -- RET

"""



inputASM = 'ASM.txt' #Arquivo de entrada de contém o assembly
outputBIN = 'BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL
outputMIF = 'initROM.mif' #Arquivo de saída que contém o binário formatado para .mif

noveBits = True

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0",
       "LDA":   "1",
       "SOMA":  "2",
       "SUB":   "3",
       "LDI":   "4",
       "STA":   "5",
       "JMP":   "6",  
       "JEQ":   "7",
       "CEQ":   "8",
       "JSR":   "9",
       "RET":   "A",
       "CLT":   "B",
       "JLT":   "C",
       "AND":  "D",
}

def extrai_registrador_e_valor(line):
    """Extrai registrador e valor do imediato e retorna o valor em hexadecimal e o código do registrador."""
    parts = line.split(',')
    valor = parts[0].strip()
    registrador = parts[1].strip() if len(parts) > 1 else 'R0'
    
    reg_codes = {'R0': '00', 'R1': '01', 'R2': '10', 'R3': '11'}
    return valor, reg_codes[registrador]

def converte_valor_com_registrador(valor, registrador, nove_bits):
    """Converte valor imediato com tratamento para nove bits e adiciona código do registrador."""
    if nove_bits:
        if int(valor) > 255:
            valor = int(valor) - 256
            valor_hex = hex(valor)[2:].upper().zfill(2)
            return f"\" & '1' & x\"{valor_hex}\" & \"{registrador}"
        else:
            valor_hex = hex(int(valor))[2:].upper().zfill(2)
            return f"\" & '0' & x\"{valor_hex}\" & \"{registrador}"
    else:
        valor_hex = hex(int(valor))[2:].upper().zfill(2)
        return f"x\"{valor_hex}\" & \"{registrador}"

def converteArroba(line, nove_bits):
    parts = line.split('@')
    opcode = parts[0].strip()
    valor, registrador = extrai_registrador_e_valor(parts[1])
    converted = converte_valor_com_registrador(valor, registrador, nove_bits)
    return f"{opcode}{converted}"  # Removido espaço entre opcode e converted


def converteCifrao(line, nove_bits):
    parts = line.split('$')
    opcode = parts[0].strip()
    valor, registrador = extrai_registrador_e_valor(parts[1])
    converted = converte_valor_com_registrador(valor, registrador, nove_bits)
    return f"{opcode}{converted}"  # Removido espaço entre opcode e converted

#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    parts = line.split()
    opcode = parts[0]
    rest = " ".join(parts[1:]) if len(parts) > 1 else ""
    opcode_hex = mne[opcode]
    if rest:
        return f"{opcode_hex} {rest}", False  # Retorna False indicando que há operandos
    else:
        return f"{opcode_hex}", True  # Retorna True indicando que NÃO há operandos

#mapeando as labels
def mapear_labels(lines):
    labels_map = {}
    linha_efetiva = 0
    for line in lines:
        # Primeiro, remove espaços em branco desnecessários e a quebra de linha no final
        cleaned_line = line.strip()

        # Divida a linha em instrução e comentário, se houver
        parts = cleaned_line.split('#', 1)
        instrucao = parts[0].strip()  # Remove espaços adicionais antes e depois da instrução

        if instrucao.endswith(':'):  # Verifica se a instrução termina com ':'
            label = instrucao[:-1]  # Remove o ':' do label
            labels_map[label] = linha_efetiva  # Mapeia o label para o número da linha
        else:
            # Só incrementa linha_efetiva se a linha não for um label
            linha_efetiva += 1
    return labels_map



with open(inputASM, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas
    

#----------Ajustando código com as partes de labels----------------
# Utiliza a função de mapear labels para obter um mapa de labels para números de linha
labels_map = mapear_labels(lines)
print(labels_map)
# Agora, vamos criar uma nova lista de linhas que exclui as linhas de labels
lines_sem_labels = []
for line in lines:
    # Remove espaços em branco desnecessários
    trimmed_line = line.strip()
    # Verifica se a linha é um label (termina com ':') ou se é inválida
    if not trimmed_line or trimmed_line.endswith(':'):
        continue  # Pula linhas de labels e linhas inválidas
    lines_sem_labels.append(line)  # Adiciona linhas válidas e que não são labels à nova lista



with open(outputBIN, "w+") as f:
    cont = 0
    for line in lines_sem_labels:
        original_line = line.strip()  # Keep the original line for comments
        if line.startswith('\n') or line.startswith(' ') or line.startswith('#'):
            continue
        
        line = line.strip()
        comment = ""
        if '#' in line:
            line, comment = line.split('#', 1)
            comment = f"#{comment.strip()}"  # preserve additional comments

        if '.' in line:
            parts = line.split()
            instruction, label = parts[0], parts[1].lstrip('.')
            if label in labels_map:
                line = f"{instruction} @{labels_map[label]}"
            else:
                print(f"Label '{label}' not found in line: {line.strip()}")
                continue

        line, instrucao_simples = trataMnemonico(line)

        if '@' in line:
            line = converteArroba(line, noveBits)
        elif '$' in line:
            line = converteCifrao(line, noveBits)
        elif instrucao_simples:
            if noveBits:
                line += "\" & '0' & x\"00\" & \"00"  # Adiciona '00' para manter formato consistente
            else:
                line += "\" & x\"00\" & \"00"  # Adiciona '00' para instruções simples
        else:
            if noveBits:
                line += "\" & '0' & x\"00\" & \"00"
            else:
                line += "00"

        formatted_line = f"tmp({cont}) := x\"{line}\"; -- {original_line} {comment}\n"
        f.write(formatted_line)
        cont += 1      

            
############################             
############################            
#Conversão para arquivo .mif
############################             
############################
            
with open(outputMIF, "r") as f: #Abre o arquivo .mif
    headerMIF = f.readlines() #Faz a leitura das linhas do arquivo,
                              #para fazer a aquisição do header
    
    
with open(outputBIN, "r") as f: #Abre o arquivo BIN
    lines = f.readlines() #Faz a leitura das linhas do arquivo
    
    
with open(outputMIF, "w") as f:  #Abre o destino .mif novamente
                                 #agora para preenchê-lo com o pograma

    cont = 0 #Cria uma variável para contagem
    
    #########################################
    #Preenche com o header lido anteriormente 
    for lineHeader in headerMIF:      
        if cont < 21:           #Contagem das linhas de cabeçalho
            f.write(lineHeader) #Escreve no arquivo se saída .mif o cabeçalho (21 linhas)
        cont = cont + 1         #Incrementa varíavel de contagem
   #-----------------------------------------
   ##########################################
  
    for line in lines: #Varre as linhas do código formatado para a ROM (VHDL)
    
        replacements = [('t', ''), ('m', ''), ('p', ''), ('(', ''), (')', ''), ('=', ''), ('x', ''), ('"', '')] #Define os caracteres que serão excluídos
        
        ##########################################
        #Remove os caracteres que foram definidos
        for char, replacement in replacements:
            if char in line:
                line = line.replace(char, replacement)
        #-----------------------------------------
        ##########################################
                
        line = line.split('#') #Remove o comentário da linha
        
        if "\n" in line[0]:
            line = line[0] 
        else:
            line = line[0] + '\n' #Insere a quebra de linha ('\n') caso não tenha

        f.write(line) #Escreve no arquivo initROM.mif
    f.write("END;") #Acrescente o indicador de finalização da memória. (END;)