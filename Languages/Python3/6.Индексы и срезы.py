# word = 'Football, basketball, skate'
# print(len(word))
# print(word.count('a')) # Количество символов в строке
# print(word.islower()) # В нижний регистр
# print((word.capitalize())) # С заглавной строки
# print(word.find('e')) # Покажет индекс
#-------------------------------------------------------------
#hobby = word.split(', ') # Переводит строку в список
# print(hobby[2])
#-------------------------------------------------------------
# hobby = word.split(', ') # Переводит строку в список
#
# for i in range(len(hobby)):
#     hobby[i] = hobby[i].capitalize()
#
# print(hobby)

# result = ", ".join(hobby) # Переводит в обычную строку
# print(result)
#-------------------------------------------------------------
# word = 'Football'
#
# print(word[1:-1:2])
#-------------------------------------------------------------
lis = [6, 4, "Stroka", True, 6.5]
print(lis[2:5:2])
print(lis[::2])