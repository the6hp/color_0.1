import Foundation


func changeColorArray () {
   
    
    
    
    
    //Текущей ячейке восстановили цвет
    variables.colorArray[Int(variables.colorTapEnd[1])] = variables.colorHome
    
    
    //Предыдущей ячейке присвоили цвет другой ячейки
    var randomIntColor = -1
    repeat {
        randomIntColor = Int.random(in: 0..<variables.w.count)
    } while randomIntColor == Int(variables.colorTapEnd[1]) || randomIntColor == Int(variables.colorTapStart[1])
    
    print("Новая ячейка цвета: ", randomIntColor)
    print("Ячейка цвета текущая: ", Int(variables.colorTapEnd[1]))
    print("Ячейка цвета предыдущая: ", Int(variables.colorTapStart[1]))

    
    var newColor = variables.colorArray[randomIntColor]
    print(newColor)
    
    //Меняем цвет ранее выбранной ячейки

    if randomIntColor >= 0 {
        variables.colorHome = variables.colorArray[Int(variables.colorTapStart[1])]
        variables.colorArray[Int(variables.colorTapStart[1])] = newColor
    }
    //Меняем цвет ранее выбранной ячейки

    
    
    
    print("Успех")
}





