//
//  Student.swift
//  StudentExample
//
//  Created by Ankita Pabbi on 2019-06-28.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import Foundation
class Student {
    var studentId : Int
    var firstName : String
    var lastName : String
    var gender : String
    var birthDate : String
    var studentDict: Dictionary<Int,String> = Dictionary <Int,String>()
    
    init(stuId: Int,fName:String,lName:String,gen:String,bDate:String) {
        self.studentId = stuId
        self.firstName = fName
        self.lastName = lName
        self.gender = gen
        self.birthDate = bDate
    }
    func addStudent() {
        
    }
  
}
