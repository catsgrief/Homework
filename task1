import Cocoa

//task1 решить квадратное уравнение ax2 + bx + c = 0
print("Решите квадратное уравнение 5х2-8х+3=0")
var cofA = 5.0
var cofB = -8.0
var cofC = 3.0
var disc = (cofB * cofB) - 4 * cofA * cofC
var disc2 = sqrt(Double(disc))
/*
if disc > 0.0 {
    print("No roots")
} else if disc == 0.0 {
  let root1 = ((-cofB + disc2) / (2 * cofA))
    print(root1)
} else {
    let root1 = (-cofB + disc2) / (2 * cofA)
   let root2 = (-cofB - disc2) / (2 * cofA)
    print( root1 + root2)
}
 */
var root1 = (-cofB + disc2) / (2 * cofA)
var root2 = (-cofB - disc2) / (2 * cofA)
print( "First root is", root1, ", Second root is", root2)

//task2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
// s=0,5 * a * b, a и b стороны

print("Вычислите площадь, периметр и гипотенузу прямоугольного треугольниками с катетами 10 и 20")
let a = Float(10)
let b = Float(20)
var area = 0.5 * a * b
var hypotenyse = (a * a) + (b * b)
var hypo2 = sqrt(Float(hypotenyse))
var perimetr = a + b + hypo2
print("Периметр равен \(perimetr)" + ", Площадь равна \(area)" + ", Гипотенуза равна \(hypo2)")

//task 3 * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var sum = 1000.0
var percent = 9.0
var percent2 = percent / 100.0

var year1 = (sum * percent2) + sum
var year2 = (year1 * percent2) + year1
var year3 = (year2 * percent2) + year2
var year4 = (year3 * percent2) + year3
var year5 = (year4 * percent2) + year4

print("Сумма вклада за пять лет при ставке 9% составит \(year5)")

var number = 1.0
var result = 0.0
while number <= 5 {
    result = (sum * percent2) + sum
    number += 1
}
print(result)
