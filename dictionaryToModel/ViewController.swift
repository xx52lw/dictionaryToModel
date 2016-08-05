//
//  ViewController.swift
//  dictionaryToModel
//
//  Created by 张星星 on 16/8/6.
//  Copyright © 2016年 张星星. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dict = [
            "name" : "liwei",
            "age"  : 25,
            "wife" : ["name" : "xingxing"],
            "cat"  : ["col" : "black"],
            "tianjia" : "ceshi",
            "friends" : [
                [ "name" : "xiao1",
                    "person":[
                        "name" : "zhanglei",
                        "age"  : 25,
                        "cat"  : ["col" : "red"],
                        "friends" : [
                            ["name" : "xiao2"],
                        ],
                        "babys" : [
                            ["age" : "5", "sex" : "男1"],
                            ["age" : "6", "sex" : "女2"],
                            ["age" : "7", "sex" : "男女3"],
                        ],
                    ]
                ],
                [ "name" : "xiao1",
                    "person":[
                        "name" : "chutong",
                    ]
                ]
            ],
            "babys" : [
                ["age" : "2", "sex" : "男"],
                ["age" : "3", "sex" : "女"],
                ["age" : "4", "sex" : "男女"],
            ],
            
            ]
        
        let person = LWPerson.objectWithDictionary(dict) as? LWPerson
        
        let name = person?.name
        let age = person?.age
        let friend = person?.friends
        let  friend1 = person?.friends?.first
        let friend2 = person?.friends?.last
        let babys = person?.babys
        let bay = babys?.first?.age
        
        
        print(person)
        

    }


}

