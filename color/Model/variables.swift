//
//  variables.swift
//  color
//
//  Created by Alexander Penkov on 05.06.2020.
//  Copyright © 2020 Alexander Penkov. All rights reserved.
//

import Foundation


struct variables {
//базовый массив
static var ArrayColor = [0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9]
static var w = [Int]()
static var h = [Int]()
    //Стартовая позиция для отенка одного цвета
static var startNumberColor: Float = 0
    //Массив цветов
static var colorArray = [Float]()
    //Хранилище убранного с поля цвета
static var colorHome: Float = 0
    //Текущая нажатая ячейка
    static var colorTapEnd = [Float]()
    //Предыдущая нажатая ячейка
static var colorTapStart = [Float]()

}
