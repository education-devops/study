# import time
#
# time.sleep(3)
# print("Hello")
#--------------------------------------
# import datetime as d
#
# print(d.datetime.now().time())
# print(d.datetime.now().time().hour)
# print(d.datetime.now().date())
#--------------------------------------
# import datetime as d, sys, os, platform
# from math import sqrt as s, ceil
#
# print(sys.path)
# print(os.name)
# print(platform.system())
# print(s(49))
# print(ceil(s(49)))
#--------------------------------------
# import mymodule as my
#
# print(my.name)
# my.hello()
#--------------------------------------
# from mymodule import add_there_numbers as add
#
# print(add(5, 3, 0))
#------------------------------------------------------------------------------------------------------------------

mymodule.py

name = "Bob"

def hello():
    print("Hello", name)

def add_there_numbers(a, b, z):
    if a != 0 and b != 0 and z != 0:
        return a + b + z
    else:
        return "some is zero"