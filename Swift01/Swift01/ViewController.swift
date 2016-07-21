//
//  ViewController.swift
//  Swift01
//
//  Created by LIUYONG on 16/1/20.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Property
    var label: UILabel!
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ConfigureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Private Method
    func ConfigureUI() {
        self.label = UILabel(frame: CGRectMake(0, 0, 100, 30))
        self.label.backgroundColor = UIColor.redColor()
        self.label.textAlignment = NSTextAlignment.Center
        self.label.center = self.view.center;
        self.label.text = "0"
        self.label.userInteractionEnabled = true
        self.view.addSubview(self.label)
        
        let tap = UITapGestureRecognizer(target: self, action: "tapAction")
        self.label.addGestureRecognizer(tap)
        
        let button = UIButton(frame: CGRectMake(0, 0, 80, 30))
        button.userInteractionEnabled = true
        button.setTitle("Counter", forState: UIControlState.Normal)
        button.center = CGPointMake(self.view.center.x, CGRectGetMaxY(self.label.frame)+100)
        button.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        button.addTarget(self, action: "tapAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    
    func tapAction() {
        let title: Int!
        title = Int(self.label.text!)
        self.label.text = "\(title+1)"
    }
}

