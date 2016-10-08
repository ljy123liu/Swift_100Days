//
//  ViewController.swift
//  Swift15_CALayer
//
//  Created by LIUYONG on 16/10/8.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CALayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.basicLayer()
        self.subLayer()
        self.cornerLayer()
        self.shadowLayer()
        self.borderLayer()
        self.imageLayer()
        self.maskLayer()
        self.customLayer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func basicLayer() {
        let backgroundLayer : CALayer
        backgroundLayer = self.view.layer
        backgroundLayer.backgroundColor = UIColor.green.cgColor
    }
    
    func subLayer() {
        let subLayer = CALayer()
        subLayer.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        subLayer.backgroundColor = UIColor.blue.cgColor
        self.view.layer.addSublayer(subLayer)
    }
    
    func cornerLayer() {
        let cornerLayer = CALayer()
        cornerLayer.frame = CGRect(x: 200, y: 100, width: 100, height: 100)
        cornerLayer.backgroundColor = UIColor.red.cgColor
        cornerLayer.cornerRadius = 10
        self.view.layer.addSublayer(cornerLayer)
    }
    
    func shadowLayer() {
        let shadowLayer = CALayer()
        shadowLayer.frame = CGRect(x: 50, y: 250, width: 100, height: 100)
        shadowLayer.backgroundColor = UIColor.orange.cgColor
        shadowLayer.shadowColor = UIColor.black.cgColor
        shadowLayer.shadowOffset = CGSize(width: 0, height: 5)
        shadowLayer.shadowRadius = 10;
        shadowLayer.shadowOpacity = 1
        self.view.layer.addSublayer(shadowLayer)
    }
    
    func borderLayer() {
        let borderLayer = CALayer()
        borderLayer.frame = CGRect(x: 200, y: 250, width: 100, height: 100)
        borderLayer.backgroundColor = UIColor.yellow.cgColor
        borderLayer.borderColor = UIColor.purple.cgColor
        borderLayer.borderWidth = 5
        self.view.layer.addSublayer(borderLayer)
    }
    
    func imageLayer() {
        let imageLayer = CALayer()
        imageLayer.frame = CGRect(x: 50, y: 400, width: 100, height: 100)
        imageLayer.backgroundColor = UIColor.cyan.cgColor
        imageLayer.contents = UIImage(named: "image1")?.cgImage
        self.view.layer.addSublayer(imageLayer)
    }
    
    func maskLayer() {
        let imageLayer = CALayer()
        imageLayer.frame = CGRect(x: 200, y: 400, width: 100, height: 100)
        imageLayer.backgroundColor = UIColor.cyan.cgColor
        imageLayer.contents = UIImage(named: "image1")?.cgImage
        
        let maskLayer = CALayer()
        maskLayer.frame = imageLayer.bounds
        maskLayer.contents = UIImage(named:"bird1")?.cgImage
        
        imageLayer.mask = maskLayer
        self.view.layer.addSublayer(imageLayer)
    }

    func customLayer() {
        let customLayer = CALayer()
        customLayer.frame = CGRect(x: 50, y: 550, width: 100, height: 100)
        customLayer.backgroundColor = UIColor.yellow.cgColor
        customLayer.delegate = self
        customLayer.setNeedsDisplay()
        self.view.layer.addSublayer(customLayer)
    }
    
    func draw(_ layer: CALayer, in ctx: CGContext) {
        ctx.setLineWidth(2.0)
        ctx.setStrokeColor(UIColor.red.cgColor)
        ctx.strokeEllipse(in: layer.bounds)
    }

}

