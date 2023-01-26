# file = open('data/text.txt', 'w')
# file = open('data/text.txt', 'a')

# file.write('Hello\n')
# file.write('!!!')
# file.close()
#-------------------------------------------------
# data = input("Введите текст: ")
#
# # file = open('data/text.txt', 'w')
# file = open('data/text.txt', 'a')
#
# file.write(data + "\n")
# file.close()
#-------------------------------------------------
# file = open('data/text.txt', 'r')
#
# print(file.read(20))
#
# file.close()
#-------------------------------------------------
file = open('data/text.txt', 'r')

for line in file:
    print(line, end="")

file.close()
