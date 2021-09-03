//
//  ViewController.swift
//  pickers example
//
//  Created by cemal tüysüz on 2.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textFieldTime: UITextField!
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // DatePicker settings
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldDate.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(self.getDate(picker:)), for: .valueChanged)
        
        // Time Picker settings
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldTime.inputView = timePicker
        timePicker?.addTarget(self, action: #selector(self.getTime(picker:)), for: .valueChanged)
        
    }
    
    @objc func getDate(picker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.string(from: picker.date)
        textFieldDate.text = date
    }
    
    @objc func getTime(picker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        let date = dateFormatter.string(from: picker.date)
        textFieldTime.text = date
    }


}

