import Foundation

func startArray () {
    
    
    //---------------------------------
    //Создание массива из разных цветов
    //---------------------------------
    
    var colorNum: Float = 0
    var startArray = [Float]()
    
    var i = 0
    repeat {
        colorNum = variables.startNumberColor / Float(variables.w.count)
        variables.startNumberColor += 1
        startArray.append(colorNum)
        i += 1
    } while i < variables.w.count
    
    //---------------------------------
    //Меняем цвета местами
    //---------------------------------
    
    var n = 0
    repeat {
        var randomIntStart = Int.random(in: 0..<variables.w.count)
        var randomIntEnd = Int.random(in: 0..<variables.w.count)
        
        var nR: Float = startArray[randomIntStart]
        startArray[randomIntStart] = startArray[randomIntEnd]
        startArray[randomIntEnd] = nR
        n += 1
    } while n < (variables.w.count*5)
    
    //---------------------------------
    //Дублируем один из цветов
    //---------------------------------
    var randomIntChangeColorStart = 0
    var randomIntChangeColorEnd = 0
    
    repeat {
        randomIntChangeColorStart = Int.random(in: 0..<variables.w.count)
        randomIntChangeColorEnd = Int.random(in: 0..<variables.w.count)
    } while randomIntChangeColorStart == randomIntChangeColorEnd
    


    variables.colorHome = startArray[randomIntChangeColorStart]
    startArray[randomIntChangeColorStart] = startArray[randomIntChangeColorEnd]
    
    
    
    
    
    print(startArray)
    variables.colorArray = startArray
}
