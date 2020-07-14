//
//  main.swift
//  4l_Anthony_Chechevichkin
//
//  Created by Katerina on 14.07.2020.
//  Copyright © 2020 CHAS. All rights reserved.
//

import Foundation

enum brandCar {
    case Ferrari, McLaren, Mercedes, Peterbilt, Freightliner, Volvo, Ford
}

enum sportOption {
    case race, road
}

enum tyreOption {
    case defaulTyre, highPerfomance
}

//enum wheelsAmount: Int {
//    case 4, 6
//}

// не совсем понимаю, почему нельзя в enum перечислять целые значения?



class Car {
    var brand: brandCar
    var year: Int
    var tyres: tyreOption
    
    func changeTyre() {
        if tyres == .defaulTyre {
            self.tyres = .highPerfomance
            print("Установлены высокоэффективные покрышки")
        } else {
            self.tyres = .defaulTyre
            print("Установлены обычные покрышки")
        }
    }
    
    init(brand: brandCar, year: Int, tyres: tyreOption) {
        self.brand = brand
        self.year = year
        self.tyres = tyres
    }

}


class Truck: Car {
    var withTrailer: Bool
    
    func loadedOption() {
        if withTrailer == true {
            print("Грузовик с прицепом")
        } else {
            print("Грузовик без прицепа")
        }
    }
    
    override func changeTyre() {
        if tyres == .defaulTyre {
           self.tyres = .highPerfomance
            print("Установлены покрышки с высокой проходимостью")
        } else {
            self.tyres = .defaulTyre
            print("Установлены обычные покрышки")
        }
    }

    
    init(brand: brandCar, year: Int, tyres: tyreOption, withTrailer: Bool) {
        self.withTrailer = withTrailer
        super.init(brand: brand, year: year, tyres: tyres) // Правильная ли это строка?
    }
    

}


class SportCar: Car {
    var sportType: sportOption
    
    func sportCarType() {
        if sportType == .race {
            print("Модель гоночной комплектации")
        } else {
            print("Модель обычной комплектации")
        }
    }
    
    override func changeTyre() {
        if tyres == .defaulTyre {
           self.tyres = .highPerfomance
            print("Установлены гоночные покрышки")
        } else {
            self.tyres = .defaulTyre
            print("Установлены обычные покрышки")
        }
    }
    
    
    init(brand: brandCar, year: Int, tyres: tyreOption, sportType: sportOption) {
        self.sportType = sportType
        super.init(brand: brand, year: year, tyres: tyres) // Правильная ли это строка?
    }

}


var model1 = Car(brand: .Ford, year: 1999, tyres: .defaulTyre)

model1.changeTyre()
model1.changeTyre()

var model2 = Truck(brand: .Peterbilt, year: 2005, tyres: .defaulTyre, withTrailer: false)

model2.changeTyre()
model2.changeTyre()

model2.loadedOption()


var model3 = SportCar(brand: .McLaren, year: 2012, tyres: .defaulTyre, sportType: .race)

model3.changeTyre()
model3.changeTyre()


model3.sportCarType()



// Прошу прощения: сейчас чуть выросла загрузка, поэтому не все успеваю вовремя, тем более что пересматриваю вебинары перед тем, как начать выполнение ДЗ.
