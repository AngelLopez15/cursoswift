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
