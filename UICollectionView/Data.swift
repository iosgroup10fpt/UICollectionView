//
//  Data.swift
//  UISearchController
//
//  Created by imac on 5/5/17.
//  Copyright © 2017 imac. All rights reserved.
//

import Foundation
import UIKit

class Data {
    var listStudents : [Students]
    
    init(listStudents : [Students]) {
        self.listStudents = listStudents
    }
    
    class func arrayStudents() -> [Data] {
        return [self.Students1(), self.Students2()]
    }
    
    class func Students1() -> Data {
        var listCanndy = [Students]()
        listCanndy.append(Students(name: "Thanh Khoa", university :"Chocolate Bar", imageName: "ChocolateBar.png" ))
        return Data(listStudents : listCanndy)
    }
    
    class func Students2() -> Data {
        var listCanndy = [Students]()
        listCanndy.append(Students(name: "Apple", university :"Samsung", imageName: "ChocolateBar.png" ))
        return Data(listStudents : listCanndy)
    }

}
