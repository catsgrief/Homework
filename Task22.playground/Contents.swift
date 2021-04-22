import Cocoa

//задание №1 Написать функцию, которая определяет четное число или нет
func even(addNumber: Int) {
    if addNumber % 2 == 0 {
        print("Это число четное")
    } else {
        print("Это число нечетное")
    }
}
even(addNumber:18)
//здание №2 Написать функцию, которая определяет, делится ли число без остатка на 3

func divide3 (addNumber: Int) {
    if addNumber % 3 == 0 {
        print("Число делится на три без остатка")
    }
    else {print("Число не делится без остатка на три")
    }
}
divide3(addNumber: 12)

//задание №3 создать возрастающий массив из 100 чисел

var array100 = [Int]()
for number in 1...100 {
    array100.append(number)
}
print(array100)

//задание4 Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for i in  array100 {
    if (i % 2 == 0 || i % 3 == 0) {
        array100.remove(at: array100.firstIndex(of: i)!)
    }
}

print(array100)

/* var array3 = [Int]()
for i in array100 {
    if i % 2 == 0 || i % 3 == 0 {
        array3.append(i)
    }
}
print(array3)

var set1 = Set<Int>()
for i in array3 {
    set1.insert(i)
}
for q in set1.sorted() {
    print(q)
}

var set2 = Set<Int>()
for i in array100 {
    set2.insert(i)
}
for q in set2.sorted() {
    print(q)
}
var set3 = set2.subtracting(set1).sorted()
print(set3.sorted())
var arrayNew = [Int](set3)
print(arrayNew) */

//Задание№5 * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonachi (number1: Int, number2: Int) -> Int {
    var a = number1 + number2
    return a
}

var array1 = [0, 1]
print(array1)

var x = 0
print(x)

for number in 1...50 {
    x = fibonachi(number1: array1[array1.count - 2], number2: array1[array1.count - 1])
    array1.append(x)
}
print(array1)


func fibonachi2 (x: Array<Int>) -> Array<Int> {
    var a = x[x.count - 2] + x[x.count - 1]
var z = x
    z.append(a)
   // print(z)
    return z
    }

var y = [0, 1]
for i in 1...50 {
    y = fibonachi2(x: y)
}

print(y)

/*Задание 6
6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно. */
