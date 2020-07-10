


print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')

def add(num1, num2): 
    return a + c 

def subtract(num1, num2): 
    return a - c 

a = [1,2,3,4,5]
c = [1,2,3,4,5]

select = int(input("Select operations form 1, 2:"))
a = int(input('Please choose your first number (zero to five): ')) 
c = int(input('Please choose your second number (zero to five): '))

if select == 1: 
    print(a, "+", c, "=", 
                    add(a, c))

elif select == 2: 
    print(a, "-", c, "=", 
                    subtract(a, c))




