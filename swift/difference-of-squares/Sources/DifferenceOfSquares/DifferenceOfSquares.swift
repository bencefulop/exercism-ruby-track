//Solution goes in Sources

import Foundation

struct Squares {
    let squareOfSum: Int
    let sumOfSquares: Int
    let differenceOfSquares: Int
    
    init(_ n: Int) {
        self.squareOfSum = Squares.calculateSquareOfSum(n)
        self.sumOfSquares = Squares.calculateSumOfSquares(n)
        self.differenceOfSquares = Squares.calculateDifferenceOfSquares(n)
    }
    
    static func calculateSquareOfSum(_ n: Int) -> Int {
        var result: Double = 0.0
        var number = 0
        
        while number < n {
            result += Double(number + 1)
            number += 1
        }
        
        return Int(pow(result, 2.0))
    }
    
    static func calculateSumOfSquares(_ n: Int) -> Int {
        var result: Int = 0
        var number = 0
        
        while number < n {
            result += Int(pow(Double(number + 1), 2.0))
            number += 1
        }
        
        return result
    }
    
    static func calculateDifferenceOfSquares(_ n: Int) -> Int {
        return calculateSquareOfSum(n) - calculateSumOfSquares(n)
    }
    
}
