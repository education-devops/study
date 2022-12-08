# data = (4, 6, 7, 3, 6, True, 5.6, 'Hello')
# # data[0] = 5 # В кортеже не меняется значение
# print(data[1:-1])
#
# #print(data.count(6))
# # print(len(data))
# print(data)
#--------------------------------------------------------------
# data = (4, 6, 7, 3, 6, True, 5.6, 'Hello')
#
# for el in data:
#     print(el)
#--------------------------------------------------------------
nums = [5, 7, 8]

new_data = tuple(nums)
print(new_data)
word = tuple('Hello World')
print(word)