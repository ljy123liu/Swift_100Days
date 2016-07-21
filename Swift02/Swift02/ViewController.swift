//
//  ViewController.swift
//  Swift02
//
//  Created by LIUYONG on 16/1/22.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tipView: TipView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "Slider"
        
        self.tipView = TipView.init(frame: self.view.bounds)
        self.tipView.textField.placeholder = "请输入..."
        self.tipView.textField.font = UIFont.systemFontOfSize(13.0)
        self.tipView.slider.addTarget(self, action: "sliderValue:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(self.tipView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func sliderValue (sender: UISlider!) {
        self.tipView.textField.text = "\(sender.value)"
    }



}

