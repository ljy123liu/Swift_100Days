//
//  TipView.swift
//  Swift02
//
//  Created by LIUYONG on 16/7/20.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class TipView: UIView {
    //重写init方法
    internal var textField: UITextField!
    internal var slider: UISlider!
    internal var tipLabel: UILabel!
    internal var topPriceLabel: UILabel!
    internal var bottomPriceLabel: UILabel!
    
    var tipModel: TipModel? {
        didSet {
            guard let newModel = tipModel else {return}
            self.tipLabel.text = newModel.tip
            self.topPriceLabel.text = newModel.topPrice
            self.bottomPriceLabel.text = newModel.bottomPrice
        }
    }
    
    //MARK:Override
    override init (frame: CGRect) {
        super.init(frame: frame)
        self.textField = UITextField.init(frame: CGRectMake(10, 74, 100, 30))
        self.textField.backgroundColor = UIColor.lightGrayColor()
        self.textField.layer.cornerRadius = 5
        self.textField.layer.masksToBounds = true
        self.addSubview(self.textField)
        
        
        let label = UILabel.init(frame: CGRectMake(10, 150, 100, 30));
        self.addSubview(label)
        
        self.slider = UISlider.init(frame: CGRectMake(10, 200, 200, 20))
        self.slider.addTarget(self, action: "sliderValue:", forControlEvents: UIControlEvents.ValueChanged)
        self.addSubview(self.slider)
        
        self.tipLabel = UILabel .init(frame: CGRectMake(100, 80, 100, 30))
        self.addSubview(self.tipLabel)
        
        self.topPriceLabel = UILabel .init(frame: CGRectMake(100, 150, 100, 30))
        self.addSubview(self.topPriceLabel)
        
        self.bottomPriceLabel = UILabel .init(frame: CGRectMake(100, 220, 100, 30))
        self.addSubview(self.bottomPriceLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:UISlider Method
    func sliderValue (sender: UISlider!) {
        self.textField.text = "\(sender.value)"
    }
    
}
