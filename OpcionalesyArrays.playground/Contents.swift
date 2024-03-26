import Foundation

// opcionales en swift
// los opcionales es un tipo de dato que puede tener un valor o ser "nil" (nulo)
// los opcinales se declaran con ? inmediatamewnte despues del tipo de dato
let name: String? = ""
let lastName: String? = "Doe"
//para asignar un niul siempre se debe de poner con un opcional
let numberX: Int? = nil

print(name)
print(lastName)

// Los opcionales son muy utiles para validar las respuestas que recibimos del servidor


// Estrayendo valores de los opcionales

// Estraccion forzada "unwrapping"
let nameExample: String? = "Jhon"

if nameExample != nil {
    print(nameExample!)
} else {
    print("Don't exist any value")
}

// Extraccion por optional binding: se declara una variable temporal
var nameExampleTwo: String?
nameExampleTwo = "Jhon Doe"

if let nameWithValue = nameExampleTwo {
    print(nameWithValue)
} else {
    print("Don't exist any value")
}

