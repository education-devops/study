# def test_func():
#     print("Hello", end="")
#     print("!")
#
# test_func()
#----------------------------------------
# def test_func(word):
#     print(word, end="")
#     print("!")
#
# test_func("Hi")
# test_func(5)
# test_func(5.6)
#----------------------------------------
# def summa(a, b):
#     res = a + b
#     print("Result:", res)
#
# summa(5, 7)
# summa("H", "i")
#----------------------------------------
# def summa(a, b):
#     res = a + b
#     print("Result:", res)
#
# res = summa(5.5, 7.5)
# print(res)
#----------------------------------------
# def summa(a, b):
#     return a + b
#
# res = summa(5.5, 7.5)
# print(res)
# print(summa("H", "i"))
#----------------------------------------
# nums1 = [5, 7, 9, 4, 2]
#
# min = nums1[0]
#
# for el in nums1:
#     if el < min:
#         min = el
#
# print(min)
#----------------------------------------
# nums2 = [5.4, 7.2, 2.3, 2.1, 9.4, 4.2]
#
# min2 = nums2[0]
#
# for el in nums2:
#     if el < min2:
#         min2 = el
#
# print(min2)
#----------------------------------------
# def minimal(l):
#     min_number = l[0]
#     for el in l:
#         if el < min_number:
#             min_number = el
#
#     print(min_number)
#
# nums1 = [5, 7, 9, 4, 2]
# minimal(nums1)
#
# nums2 = [5.4, 7.2, 2.3, 2.1, 9.4, 4.2]
# minimal(nums2)
#----------------------------------------
# def minimal(l):
#     min_number = l[0]
#     for el in l:
#         if el < min_number:
#             min_number = el
#
#     return min_number
#
# nums1 = [5, 7, 9, 4, 2]
# min1 = minimal(nums1)
#
# nums2 = [5.4, 7.2, 2.3, 2.1, 9.4, 4.2]
# min2 = minimal(nums2)
#
# if min1 < min2:
#     print(min1)
# else:
#     print(min2)
#----------------------------------------
# func = lambda x, y: x * y                     # lambda Функция пишется только на одной строке
# res = func(5, 2)
# print(res)