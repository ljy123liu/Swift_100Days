//
//  TipModel.swift
//  Swift02
//
//  Created by LIUYONG on 16/7/20.
//  Copyright © 2016年 WanJianTechnology. All rights reserved.
//

import UIKit

class TipModel: NSObject {
    var tip: String?
    var topPrice: String?
    var bottomPrice: String?
    init(tip: String, topPrice: String, bottomPrice: String) {
        self.tip = tip
        self.topPrice = topPrice
        self.bottomPrice = bottomPrice
    }
}
