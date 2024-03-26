import Foundation

// ciclo for
for index in 0...10 {
    print("this is the loop number => \(index)")
}

// diciendole de que rango debe empezar
for index in 5..<10 {
    print("this is the loop number: \(index)")
}

var counter: Int = 0
for index in 0..<10 {
    print(index)
    counter+=index
}

print("The final value of conunter is: \(counter)")

// ciclo while
// si la condicion se cumple entonces entra al while
// eso quiere decir que puede que nunca se ejecute si no se cumple la condicion
var counterForWhile: Int = 10

while counterForWhile > 0 {
    print("value into while is: \(counterForWhile)")
    counterForWhile -= 1
}

// Ciclo repeat while es el equivalente al do while en otros lenguajes
// el repeat while se ejecuta siempre por lo menos una vez
var counterForRepeatWhile: Int = 10
repeat {
    print(counterForRepeatWhile)
    counterForRepeatWhile -= 1
} while (counterForRepeatWhile >= 0)
