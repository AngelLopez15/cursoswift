import Foundation

// Tuplas
// Es un tipo de dato que agrupa diferentes tipos de datos primitivos
// los valores se pasan por medio de comas

// asignacion implicita
let movie = ("Spiderman", 2002, false)

// asignacion explicita
let movieTwo: (String, Int, Bool) = ("Iron Man", 2006, false)

// Por defecto xcode agrega un indice a cada elemento conforme se va añadiendo
// empezando de izquierda a derecha e iniciando en cero
// podemos acceder a los valores por medio de los indices
print(movieTwo.0)

// como es complicado saber que tipo de valor queremos acceder por medio del index
// entonces podemos agregar etiquetas para poder acceder a los valores
// osea ponerle un nombre al tipo de valor

let movieThree = (nameOfMovie: "Avengers", year: 2012, isAvailableInTheathers: false)
print(movieThree.nameOfMovie)

// Otra forma de acceder a los valores es haciendo un tipo de "desestructuraion" como en javascript
// si se usa este metodo las variables para desestructurar deben ser el mismo numero de datos que tiene la tupla si no va a marca un error
let coordinates = (x: 10, y: 20, z: 30)
let (x, y, z) = coordinates
print(x, y, z)
 
// creando una variable de tupla y asisgnando valor despues
var location: (latitude: Double, longitude: Double)
location = (latitude: 40, longitude: 50)

// array
// los arrays son un conjunto de datos

// forma clasica de declarar un array
var list = Array<String>()
var listSecond = ["james", "ororo", "hank"]

// forma moderna de declarar un array
let listTwo = [Int]()

// forma explicita
let listThree = [1.1, 1.2, 1.3]

// acciones que se puden hacer con los arrays

// agregar un elemeto al array
// Si declaramos el array como let no nos va a dejar agregar elemento
list.append("jhon")
list.append("richard")
list.append("george")
list.append("scott")
print(list)

// para concatenar dos arrays
list.append(contentsOf: listSecond)
print(list)

// acceder a los datos de un array es po medio del index
let oneName = list[0]
print(oneName)

// modifcar un dato de una posicion del array
list[1] = "erik"
print(list[1])

// para remover un dato tambien hay que pasarle el indice
list.remove(at: 2)

// para saber cuantos elementos tiene un array
print(list.count)

// para remover todos los datos
// list.removeAll()

// para recorrer los elemetos de un array
for name in list {
    print(name)
}

// diccionarios
// se guarda por valores del tipo clave - valor
// un diccionario puede tener n cantidad de valores
// si le ponemos el tipo de dato "Any" va a aceptar cualquier tipo de dato primitivo
var diccionario = [String: String]()

diccionario["name"] = "peter"
diccionario["lastName"] = "parker"

// para recorrer un diccionario podemos hacerlo con un for
// pero debemos tener dos parametro: la key y el valor
for (key, value) in diccionario {
    print(key, value)
}

// para acceder a un solo valor de un diccionario se debe de hacer por medio del key
// como puede que intentemos acceder a una propiedad que no existe entonces debemos usar
// extraer de forma segura y poner un valor po default
print(diccionario["name"] ?? "don't exist")

// tambien se puede extraer con un if
if let name = diccionario["name"] {
    print(name)
}

// para poner varios valores
let diccionarioTwo = ["name": "jhon", "lastName": "Doe", "Adress": "4th street"]

// poner varios tipos de valor
var diccionarioThree = ["name": "jhon", "lastName": "Doe", "age": 22, "isTall": false] as [String: Any]

// Para borrar un elemento de un diccionario se le puede dar un valor de nil
// pero el diccionario debe de estar decalrado como varible
diccionarioThree["isTall"] = nil
print(diccionarioThree)
