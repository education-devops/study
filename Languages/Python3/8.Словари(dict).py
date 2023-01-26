# country = {(5,6):3}
# print(country[(5,6)])
#--------------------------------------------------
# country = {'code': 'RU', 'name': 'Russia', 'population': 144}
# print(country)
# print(country['name'])
#--------------------------------------------------
# country = dict(code='RU', name='Russia')
# print(country['name'])
#--------------------------------------------------
# country = {'code': 'RU', 'name': 'Russia', 'population': 144}
# print(country.items())                                        # Кортежи в списке
#--------------------------------------------------
# country = {'code': 'RU', 'name': 'Russia', 'population': 144}
#
# for key, value in country.items():                            # Key, value
#     print(key," - ", value)
#--------------------------------------------------
# country = {'code': 'RU', 'name': 'Russia', 'population': 144}
#
# print(country['code'])
# print(country.get('code'))                                    # Тоже самое, что и print(country['code'])
#--------------------------------------------------
# country = {'code': 'RU', 'name': 'Russia', 'population': 144}
#
# # country.clear()                                               # Очищает словарь
# # country.popitem()                                             # Удаляем последний элемент
# # print(country.keys())
# # print(country.values())
#
# country['name'] = 'asd'                                        # Меняет Value
# print(country.items())
#--------------------------------------------------
person = {
    'user_1': {
        'first_name': 'John',
        'last_name': 'Marley',
        'age': 45,
        'address': ['г.Москва', 'ул. Какая-то', '45'],
        'phis-address': ('г.Санкт-Петербург', 'ул. Ленинградская', '78'),
        'grades': {'math': 5, 'physics': 3}
    },
    'user_2': {

    }
}
print(person)
print(person['user_1']['address'][1])
