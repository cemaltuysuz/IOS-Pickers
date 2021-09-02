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
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        textFieldDate.inputView = datePicker
        
        datePicker?.addTarget(self, action: #selector(self.getDate(picker:)), for: .valueChanged)
    }
    
    @objc func getDate(picker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.string(from: picker.date)
        print(date)
        view.endEditing(true)
    }


}

