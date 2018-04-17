//
//  SwiftViewController.swift
//  InfoPlist
//
//  Created by 李敏 on 2018/4/17.
//  Copyright © 2018年 Tongle. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let plistPath = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let data:NSMutableArray = NSMutableArray.init(contentsOfFile: plistPath!)!
        let message = data.description
        print(message)
        
        let dic:NSMutableDictionary = NSMutableDictionary()
        dic.setObject("Tongle", forKey: "Name" as NSCopying)
        dic.setObject("20", forKey: "Age" as NSCopying)
        dic.setObject("shanghai", forKey: "Address" as NSCopying)
        dic.setObject("Man", forKey: "Sex" as NSCopying)
        
        let dic1:NSMutableDictionary = NSMutableDictionary()
        dic1.setObject("Limin", forKey: "Name" as NSCopying)
        dic1.setObject("22", forKey: "Age" as NSCopying)
        dic1.setObject("shanghai", forKey: "Address" as NSCopying)
        dic1.setObject("Woman", forKey: "Sex" as NSCopying)
        
        let a:NSMutableArray = NSMutableArray.init(object: dic)
        a.add(dic1)
        a.write(toFile:plistPath!, atomically: true)
        let datas:NSMutableArray = NSMutableArray.init(contentsOfFile: plistPath!)!
        let messages = datas.description
        print(messages)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
