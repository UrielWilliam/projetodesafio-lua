--[[ 

Nome da criatura
Descrição
Som que faz

Atributos
     Ataque
     Defesa
     Vitalidade
     Velocidade
     Inteligência

Habilidades
     Furtividade
     Explosão
          
======================================================
/
/ CREEPER
/ Um monstro muito sagaz que explode na sua cara.
/ 
/ Som: Tssssss
/
/ Atributos:
/    Ataque: #######00
/    Defesa: ###000000
/    ...
/
======================================================



]]
os.execute("chcp 65001")

-- Criatura
local monsterName = "Lobo"
local description = "A lealdade dele é impecável, porém, nunca traia a confiança de um LOBO... Pode ser a última coisa que você faça."
local emoji = "🐺"
local sound = "AUuUuUuUuUuUuUuUu"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 5
local lifeAttribute = 7
local speedAttribute = 9
local inteligenceAttribute = 10

-- Função que recebe um atributo e nos retorna uma barra de progresso em string / texto

local function getProgressBar(attribute)
      local fullChar = "⬜"
      local emptyChar = "⬛"
      
      
      local result = ""
      for i = 1, 10, 1 do
            if i <= attribute then
                 result = result .. fullChar
                
             
               else
                 result = result .. emptyChar
                
      
               end
      
     end
     return result
end

-- Cartão
print("======================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| Emoji Preferido: " .. emoji) 
print("| O som do Lobo: " .. sound) 
print("| ")
print("| Atributos ")
print("| Ataque:        " .. getProgressBar(attackAttribute))
print("| Defesa:        " .. getProgressBar(defenseAttribute))
print("| Vida:          " .. getProgressBar(lifeAttribute))
print("| Velocidade:    " .. getProgressBar(speedAttribute))
print("| Inteligência:  " .. getProgressBar(inteligenceAttribute))
print("| ")
print("======================================================")
