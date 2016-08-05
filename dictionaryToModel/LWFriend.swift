//
//  LWFriend.swift
//  DataModel
//
//  Created by 张星星 on 16/8/6.
//  Copyright © 2016年 张星星. All rights reserved.
//

import UIKit

class LWFriend: NSObject {
    var name : String?
    var person : LWPerson?
    // 类名
    override class func customClassForVariableName() -> [String : AnyClass]? {
        return ["person":LWPerson.classForCoder()]
    }
    override var description: String {
        return "LWFriend:  name=\(name),person=\(person)"
    }

}
