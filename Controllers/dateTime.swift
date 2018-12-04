//
//  dateTime.swift
//  chandkareh
//
//  Created by ameen castellan on 12/2/18.
//  Copyright © 2018 ameen castellan. All rights reserved.
//

import UIKit


private var myTextField: UITextField!


class dateTime: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var PdatePicker: UIDatePicker!
    @IBAction func PdatePickerAction(_ sender: Any) {
        PdatePicker.minimumDate = Calendar.current.date(byAdding: .day, value: +1, to: Date())
        PdatePicker.maximumDate = Calendar.current.date(byAdding: .day, value: +5, to: Date())
        PdatePicker.calendar = Calendar (identifier: Calendar.Identifier.persian)
        PdatePicker.minuteInterval = 30
        
        myTextField = UITextField(frame: CGRect(x: 10, y: 50, width: self.view.frame.width, height: 20))
        myTextField.text = ""
        myTextField.borderStyle = UITextField.BorderStyle.roundedRect
        myTextField.layer.position = CGPoint(x: self.view.bounds.width/2,y: self.view.bounds.height - 100);
        
        // add UITextField to the view
        self.view.addSubview(myTextField)
        
        let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "mm/dd/YY hh:mm"
        
}
}



