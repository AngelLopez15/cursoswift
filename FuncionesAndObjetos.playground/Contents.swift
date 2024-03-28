import Foundation

// Funciones
// Las funciones como su nombre lo indica sirven para encapsular
// codigo que se encargara de realizar un funcionamiento en especifico

// para declarar una funcion se usa la palabra reservada func
// luego se pone el nombre de la funcion seguido de parentesis
// dentro de los parentesis van los parametros que la funcion puede o no
// necesitar para funcionar
func greetToFriend() {
    print("Hello my friend!")
}

// para ejecutar la funcion hayq ue poner el nombre de la funcion y los parentesis
// y podemos usarla las veces que sea necesaria
greetToFriend()

// cuando una funcion recibe parametros se le debe de indicar el nombre del parametro
// y el tipo de dato del parametro
// lo ideal es que toda funcion retorne un valor para indicar el valor del retorno
// despues de los parentesis se pone una flecha seguido del tipo de dato que la
// funcion debe de retornar
func sum(number: Int) -> Int {
    let result = number + 10
    return result
}

// para usar la funcion se le debe de pasar el paramentro
let totalSum = sum(number: 5)
print(totalSum)

// Clases y Objetos
// Para crear una clase se uasa la palabra reservada class
// las clases puden tener propiedas y estas pueden ser publicas o privadas

// las clases tambien pueden tener metodos y los metodos no son mas que funciones
// se llaman metodos cunado una funcion esta dentro de una clase
class Car {
//    var model: String?
//    var color: String?
//    var licencePlate: String?
//    var year: Int?
    
    var model: String
    var color: String
    var licencePlate: String
    var year: Int
    
//    si le quitamos el ? a las varibles debemos de hacer un init (constructor)
    init(model: String, color: String, licencePlate: String, year: Int) {
        self.model = model
        self.color = color
        self.licencePlate = licencePlate
        self.year = year
    }
    
    func toString() -> String {
        return "model: \(model), color: \(color), licence: \(licencePlate), year: \(year)"
    }
}

// Para crear una instancia del objeto debemos de crear una variable
// y ejecutar el nombre de la clase con parentesis
// si las variables declaradas en el contructor no son nil hay que psar los parametros
//var myCar = Car()

// asi ya podemos modificar las propiedades
//myCar.color = "red"
//myCar.licencePlate = "XDRE33"
//myCar.model = "Mazda"
//myCar.year = 2024

var myCar = Car(model: "Tesla", color: "black", licencePlate: "00007", year: 2024)

print(myCar.toString())

// struc
// los struc y las clases son muy parecidas
// para declarar un struc se usa la palabra reservada struc
// en un struc las variables estan inicalizadas por default
// el init en swift es el constructor en otros lenguajes
// Las clases pueden heredar pero los struc no
// un struc se considera value type y una clase se considera reference type
// es decir si a la clase myCar se la asigno a myCarTwo y en myCarTwo modifico
// una propiedad automaticamente se va a modificar en myCar tambien
// Esto no pasa con los struc

struct Vehicle {
    var model: String
    var color: String
    var year: Int
}

var myVehicle = Vehicle(model: "jeep", color: "blue", year: 2024)

// Closures
// los closueres son funciones anonimas que s epueden pasar como parametros de otra funcion
// o funciones que se pueden guardar en una variable
// los closures son los callbacks en javascript

func sumNumbers(
    _thisIsAFunction: (_ age: Int) -> Int, ageParam: Int
) -> Int {
    return _thisIsAFunction(ageParam + 2)
}

sumNumbers(_thisIsAFunction: { (thisIsTheParamOfTheFunction) -> Int in
    print(thisIsTheParamOfTheFunction)
    return thisIsTheParamOfTheFunction
}, ageParam: 33)

// Protocolos
// Los protocolos los pueden usar las clases y los struc
// los protocolos son similares a las interfaces de typescript
// son un "contrato" que fuerza a que los struc y clases deben de cumplir
// en los protocolos solo se debe de declarar las propiedades que se deben de implementar
// en las clase o en los struc

protocol ExampleProtocol {
    func greet()
//    si queremos que una propiedad sea de lectura solamente usamos get
//     si queremos que la propiedad sea de escritura ponemos set
//    poner get y set si queremos que sea de lectura y escritura
    var age: Int {get}
}

// para implementar un protocolo solo hay que ponerlo despues de : en la clase
class Person: ExampleProtocol {
//    podemos inicializar la variable directamente
    var age: Int = 20
    
    func greet() {
        print("Heeelllo!!!!")
    }
}

class Animal: ExampleProtocol {
//    o podemos inicializar la variable con un constructor
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func greet() {
        print("Hellloooo in another class!!!")
    }
}


// Herencia
class VehicleTwo {
    var color: String
    var description: String
    
    init(color: String, description: String) {
        self.color = color
        self.description = description
    }
    
    func start() {
        print("start up!!")
    }
}

// haciendo la herencia
class Bicicle: VehicleTwo {
    override func start() {
        super.start()
        print("let's go")
    }
}

var myBici = Bicicle(color: "red", description: "is nice")
print(myBici.start())
