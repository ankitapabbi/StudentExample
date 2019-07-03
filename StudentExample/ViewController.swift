//
//  ViewController.swift
//  StudentExample
//
//  Created by Ankita Pabbi on 2019-06-28.
//  Copyright © 2019 Ankita Pabbi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentId: UITextField!
    
    @IBOutlet weak var studentFirstName: UITextField!
    
    @IBOutlet weak var studentLastName: UITextField!
    
    @IBOutlet weak var selectGender: UISegmentedControl!
    
    
    @IBOutlet weak var studentBirthDate: UITextField!
    
    
    @IBAction func btnSignIn(_ sender: Any) {
        
        let sId = Int(self.studentId.text!) ?? 0
        let sFName = self.studentFirstName.text!
        let sLName = self.studentLastName.text!
        let gender = selectGender.titleForSegment(at: selectGender.selectedSegmentIndex)
        let bDate = self.studentBirthDate.text!
        let student1: Student =
            Student(stuId: sId, fName: sFName, lName: sLName, gen: gender!, bDate: bDate)
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
       
        
        let stuVC = sb.instantiateViewController(withIdentifier: "stuVC") as! DisplayDataViewController
        
        stuVC.studentId.text = self.studentId.text
        stuVC.fullName.text = self.studentFirstName.text
        //stuVC.gender.text = String(self.selectGender.contentOffsetForSegment(at: 1))
        stuVC.bDate.text = self.studentBirthDate.text
        // step - 4 Navigate or present
        //self.present(userVC, animated: true,completion: nil)
        self.navigationController?.pushViewController(stuVC,animated: true)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

