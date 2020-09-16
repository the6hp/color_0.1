import Foundation

import UIKit

func settlement (a: Int, b: Int, w: Int, h: Int) -> (w: [Int], h: [Int]) {
        
    var wArray = [Int]()
    var hArray = [Int]()
    
    
    //Ширина ячеек
    
    var widthOne = w % a
    var widthTwo = w / a
    
    if widthOne == 0 {
        var i = 0
        repeat {
            wArray.append(widthTwo)
            i += 1
        } while i < a
    }
    
    if widthOne != 0 {
        var i = 0
        var y = widthOne
        repeat {
            if y == 0 {
                wArray.append(widthTwo)
            } else if y != 0 {
                wArray.append(widthTwo + 1)
                y -= 1
            }
            i += 1
        } while i < a
    }
    
    //Высота ячеек
    
    var heightOne = h % b
    var heightTwo = h / b
    
    if heightOne == 0 {
        var i = 0
        repeat {
            hArray.append(heightTwo)
            i += 1
        } while i < b
    }
    
    if heightOne != 0 {
        var i = 0
        var y = heightOne
        repeat {
            if y == 0 {
                hArray.append(heightTwo)
            } else if y != 0 {
                hArray.append(heightTwo + 1)
                y -= 1
            }
            i += 1
        } while i < b
    }
    
//    print("Ширина: ", wArray)
//    print("Высота", hArray)
//
//    var t = 0
//    var tt = 0
//    repeat {
//        tt = tt + wArray[t]
//
//        t += 1
//    } while t < wArray.count
//
//    var t1 = 0
//    var tt1 = 0
//    repeat {
//        tt1 = tt1 + hArray[t1]
//
//        t1 += 1
//    } while t1 < hArray.count
//
//    print("Сумма ширины: ", tt)
//    print("Сумма высоты: ", tt1)
    
    var o1 = 1
    repeat {
        var i1 = 0
        repeat {
            wArray.append(wArray[i1])
            i1 += 1
        } while i1 < a
        o1 += 1
    } while o1 < b
    
    
    var o2 = 1
    repeat {
        var i2 = 0
        repeat {
            hArray.append(hArray[i2])
            i2 += 1
        } while i2 < b
        o2 += 1
    } while o2 < a
    
    
    
    
    variables.w = wArray
    variables.h = hArray
    
    return (wArray, hArray)
}
