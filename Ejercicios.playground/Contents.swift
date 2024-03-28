import Foundation

// problema fizzbuzz
// numeros divisibles entre 3 y 5 en un array
let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

for number in numbers {
    if(number % 3 == 0 && number % 5 == 0) {
        print("\(number) Fizz Buzz")
    } else if(number % 3 == 0) {
        print("\(number) Fizz")
    } else if(number % 5 == 0) {
        print("\(number) Buzz")
    }
}


// Factoriales y recursividad

func factorial (number: Int) -> Int {
    if(number == 0){
        return 1
    } else if(number < 0) {
        return -1
    }
    
    var value = 1
    
    for index in 1...number {
        value = value * index
    }
    
    return value
}

let result = factorial(number: 5)
print(result)

func factorialRecursiva(number: Int) -> Int {
    if(number == 0) {
        return 1
    } else {
        return number * factorialRecursiva(number: number - 1)
    }
}

// encontrar el nombre mas comun dentro de un array
let names: [String] = ["luis", "fernando", "alberto", "luis", "angel", "miguel", "juan", "jose", "luis", "angel", "juan"]

func mostCommonName(arrayParam: [String]) -> String {
    var counterName = [String : Int]()
    
    for name in arrayParam {
        if let counter = counterName[name] {
            //            aqui ya existe un contador
            counterName[name] = counter + 1
        } else  {
            //            aqui no existe un contador. hay que asignar uno
            counterName[name] = 1
        }
    }
    
    var nameMostCommon = ""
    
    for key in counterName.keys {
        if(nameMostCommon.isEmpty) {
            nameMostCommon = key
        } else {
            let counter = counterName[key]!
            
            if(counter > counterName[nameMostCommon]!) {
                nameMostCommon = key
            }
        }
    }
    
    return nameMostCommon
}

let theNameMostCommonIs = mostCommonName(arrayParam: names)
print(theNameMostCommonIs)

// metodos filter, map y reduce
// nos sirven para manipular arreglas que retornan un array nuevo sin alterar los originales

// filter - regresa los valores que cumplan con la condicion
let arrayForFilter: [Int] = [2, 5, 7, 9, 2, 3, 4, 6, 2, 2]
let resultArray = arrayForFilter.filter({(number) -> Bool in return number == 2 })

print(resultArray)

// map - itera y le aplica una acciona a cada valor
let arrayforMap = [2, 4, 6, 8, 10]
let resultArrayTwo = arrayforMap.map({(number) -> Int in return number * 2})
print(resultArrayTwo)

// reduce - combina los elementos de una secuencia en un solo valor
let arrayForReduce = [2, 5, 7, 10, 23]
// el primer parametro es el valor inicial
// despues va un closure
let resultArrayThree = arrayForReduce.reduce(0) { (result, number) -> Int in
    return result + number
}

print(resultArrayThree)
