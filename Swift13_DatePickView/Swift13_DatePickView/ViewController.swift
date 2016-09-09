//
//  ViewController.swift
//  Swift13_DatePickView
//
//  Created by LIUYONG on 16/9/9.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func SetDate(sender: UIButton) {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        let str = formatter.stringFromDate(self.datePicker.date)
        self.navigationItem.title = str
    }
    

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Date";
        self.datePicker.datePickerMode = .Date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

