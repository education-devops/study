try:
    with open('data/text.txt', 'r', encoding='utf-8') as file:
        print(file.read())
except FileNotFoundError:
    print("Файл не найден!")

#---------------------------------------
data/text.txt

Hello World!
My App is cool!
