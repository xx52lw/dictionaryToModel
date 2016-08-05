//
//  LWBaby.swift
//  DataModel
//
//  Created by 张星星 on 16/8/6.
//  Copyright © 2016年 张星星. All rights reserved.
//

import UIKit

class LWBaby: NSObject {
    var age : String?
    var sex : String?
    override var description: String {
        return "LWBaby:  age=\(age), sex=\(sex)"
    }
}
