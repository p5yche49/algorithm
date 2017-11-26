//
//  ViewController.swift
//  algorithm
//
//  Created by rose on 2017. 11. 26..
//  Copyright © 2017년 rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let allNumber = 55
        var jumpNumber = 0
        jumpNumber = self.jumpCase(number: allNumber)
        if jumpNumber == 0 {
            print("허용값을 초과하여 계산을 종료하였습니다.")
        } else {
           print("제이는 총\(allNumber)칸이 있을 때, \(jumpNumber)가지 방법으로 맨 끝 칸에 도달할 수 있습니다")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func  jumpCase(number:Int) -> Int {
        let result = self.makeFibonacci(number: number)
        print("fibonacci result:\(result)")
        return (result.count > 0) ? result[number]:0
    }
    
    func makeFibonacci(number:Int) -> Array<Int> {
        
        var fibonacciArray: [Int] = []
        
        for index in 0...number {
            let max = (Int.max)/2
            if (fibonacciArray.count > 2) && (fibonacciArray[index-1] > max) {
                print("허용값을 초과합니다. 계산을 종료합니다 \(fibonacciArray[index-1])")
                return []
            }
            if index == 0 {
                fibonacciArray.append(0)
            } else if index == 1 {
                fibonacciArray.append(1)
            } else if index == 2 {
                fibonacciArray.append(2)
            } else {
                fibonacciArray.append(fibonacciArray[index-1] + fibonacciArray[index-2]);
            }
        }
        return fibonacciArray
    }


}

