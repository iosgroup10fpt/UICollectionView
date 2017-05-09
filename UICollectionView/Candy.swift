//
//  Candy.swift
//  UISearchController
//
//  Created by imac on 5/5/17.
//  Copyright © 2017 imac. All rights reserved.
//

import Foundation
import UIKit

class Students{
    var  name: String
    var university : String
    var image : String
    
    init(name : String , university : String , imageName : String) {
        self.name = name
        self.university = university
//        if let img = UIImage(named: imageName) {
//            image = img
//        } else {
//            image = UIImage(named: "CandyCane")!
//        }
        self.image = imageName
    }
}
