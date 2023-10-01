import Foundation

//1//

    func factorial(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        } else {
            var result = 1
            for i in 2...n {
                result *= i
            }
            return result
        }
    }
    var factorialNums = factorial(5)
    print("factorial is: \(factorialNums)")

//2//

    func fibonacciNumbers(count: Int) -> [Int] {
        var numbers = [Int]()
    
        if count > 0 {
            numbers.append(0)
        }
        if count > 1 {
            numbers.append(1)
        }
    
        while numbers.count < count {
            let nextNumber = numbers[numbers.count - 1] + numbers[numbers.count - 2]
            numbers.append(nextNumber)
        }
    
        return numbers
    }
    let allFibonacciNumbers = fibonacciNumbers(count: 20)
    print(allFibonacciNumbers)

//3//

    func palindrome(_ input: String) -> Bool {
        let eachWord = Array(input)
        let length = eachWord.count
    
        for i in 0..<length/2 {
            if eachWord[i] != eachWord[length - 1 - i] {
                return false
            }
        }
    
        return true
    }
    let word = palindrome("racecar")
    print(word)

//4//

    func squareArray(_ numbers: [Int]) -> [Int] {
        var squaredNumbers = [Int]()
    
        for i in numbers {
            let squaredValue = i * i
            squaredNumbers.append(squaredValue)
        }
    
        return squaredNumbers
    }
    
    let myArray = [2, 3, 8]
    let squaredValues = squareArray(myArray)
    print("Squared Values: \(squaredValues)")

//5//

    func countWords(_ input: String) -> [String: Int] {
        var wordCount = [String: Int]()
        
        var words = input.lowercased().components(separatedBy: CharacterSet.whitespacesAndNewlines)
        
        for word in words {
                var trimChars = word.trimmingCharacters(in: CharacterSet(charactersIn: ",."))
                if !trimChars.isEmpty {
                    wordCount[trimChars, default: 0] += 1
                }
            }
            
            return wordCount
        }
    let mytString = "TBC x USAID, tbc it academy, we are in TBC academy."
    let result = countWords(mytString)
    print(result)

//6//

    var decimalToBinary: (Int) -> String = { number in
        if number <= 0  {
            return "0"
        }
    
        var binaryResult = ""
        var num = number
    
        while num > 0 {
            var digit = num % 2
            binaryResult = String(digit) + binaryResult
            num /= 2
        }
    
        return binaryResult
    }
    var binaryNumber = decimalToBinary(42)
    print(binaryNumber)

//7//

    var removeOddNumbers: ([Int]) -> [Int] = { num in
        return num.filter { $0 % 2 == 0 }
    }
    
    var oddNum = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    var evenNumbers = removeOddNumbers(oddNum)
    print(evenNumbers)

//8//

    var tenTimes: ([Int]) -> [Int] = { numbers in
        return numbers.map { $0 * 10 }
    }
    
    var num = [1, 2, 3]
    var multipliedByTen = tenTimes(num)
    print(multipliedByTen)

//9//

    func sumOfArray(numbers: [Int], completion: @escaping (Int) -> ()) {
        var sum = 0
    
        for number in numbers {
            sum += number
        }
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(sum)
        }
    }
    
    var numbers = [1, 2, 3, 4, 5]
    
    sumOfArray(numbers: numbers) { result in
        print("Sum after 3 seconds: \(result)")
    }

//10//
    
    func filterOddNumbers(numbers: [String]) -> [Int] {
        let oddNumbers = numbers
            .compactMap { Int($0) }
            .filter { $0 % 2 != 0 }

        return oddNumbers
    }

    let arrayOfStrings = ["cake", "9", "5", "lama", "4.6"]
    let oddNumbers = filterOddNumbers(numbers: arrayOfStrings)
    print("Odd Number/s: \(oddNumbers)")
