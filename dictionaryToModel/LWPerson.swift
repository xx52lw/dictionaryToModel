//
//  LWPerson.swift
//  DataModel
//
//  Created by 张星星 on 16/8/6.
//  Copyright © 2016年 张星星. All rights reserved.
//

import UIKit

class LWPerson: NSObject {
    var name : String?
    var age  : Int?
    var wife : LWWife?
    var cat  : LWCat?
    var friends : [LWFriend]?
    var babys : [LWBaby]?
    
    // 类名
    override class func customClassForVariableName() -> [String : AnyClass]? {
        return ["cat":LWCat.classForCoder(),"wife":LWWife.classForCoder()]
    }
    // 数组对象
    override func objectClassInArray() -> [String : AnyClass]? {
        return ["friends":LWFriend.classForCoder(),"babys":LWBaby.classForCoder()]
    }
    // 可以过滤漏掉字段或者属性转换
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        if key == "age" {
            age = value as? Int
        }
    }
    
    override var description: String {
        return "LWPerson:  name=\(name), age=\(age) ,wife = \(wife),cat=\(cat),friends = \(friends),babys=\(babys)"
    }

}
