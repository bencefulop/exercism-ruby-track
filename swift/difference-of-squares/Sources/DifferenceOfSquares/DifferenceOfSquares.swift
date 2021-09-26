//Solution goes in Sources

import Foundation

class Squares {
    let n: Int
    
    lazy var sumOfSquares: Int = {
        var result: Int = 0
        var number = 0
        
        while number < self.n {
            result += Int(pow(Double(number + 1), 2.0))
            number += 1
        }
        
        return result
    }()

    lazy var squareOfSum: Int = {
        var result: Double = 0.0
        var number = 0
        
        while number < self.n {
            result += Double(number + 1)
            number += 1
        }
        
        return Int(pow(result, 2.0))
    }()
    
    lazy var differenceOfSquares: Int = {
        self.squareOfSum - self.sumOfSquares
    }()
    
    init(_ n: Int) {
        self.n = n
    }
}
