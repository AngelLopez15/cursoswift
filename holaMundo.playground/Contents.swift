import Foundation

// las constantes se declaran con let
let greeting: String = "Hello, World"

// las varibles se declaran con la palabra var
//Tipos de datos
var age: Int = 25
age = 33

let pi: Double = 3.1416
// Los Doubles pueden contener numeros sin punto decimal
// pero los Int no pueden contener punto decimal
let otherDouble: Double = 50
let isTrue: Bool = true
let name: String = "Juan Perez"

// interpolacion de strings
let nameForInterpolation: String = "Jhon Doe"
let ageForInterpolation: Int = 33
let hobbyforInterpolation: String = "play soccer"

// aplicando la interpolacion
print("My name is \(nameForInterpolation) my age is \(ageForInterpolation) and my favorite hobby is \(hobbyforInterpolation)!!!")

// Estructuras de control

// if
let qualification: Int = 6

// Podemos poner todos los if que necesitemos
// los () son opcionales en swift
if(qualification < 5) {
    print("You Reprobate!!")
} else if(qualification == 10) {
    print("Awesome you are on fire!!!!")
} else {
    print("You Approve!!!")
}

// Switch
let letter: String = "a"

// En un switch podemos poner N cantidad de casos
// sin embargo siempre debe tener caso por defaul
// la palabra reservada break es opcional en swift
// podemos anidar casos
switch(letter) {
case "a":
    print("This is the letter a")
case "b":
    print("This is the letter b")
case "c", "d":
    print("This is the letter c or d")
default:
    print("unknown letter")
}

// usando numeros
let qualificationForSwitch: Int = 8
switch(qualificationForSwitch) {
case 5:
    print("Reprobate")
case 6:
    print("You approbe...for a little bit")
case 7, 8:
    print("Well you approbe...fine")
case 9:
    print("Great you have a nice qualification")
case 10:
    print("Awesome you are very intelligent. You never give up!!")
default:
    print("Your qualification is very low")
}

// usando rangos
// si no queremos que el default imprema algo bas con ponerle un break
switch(qualificationForSwitch) {
case 0..<6:
    print("Reprobate")
case 6..<11:
    print("Approbe")
default:
    print("unknown")
}
