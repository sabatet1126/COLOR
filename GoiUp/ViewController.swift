//
//  ViewController.swift
//  GoiUp
//
//  Created by 藤田麻里 on 2018/05/15.
//  Copyright © 2018年 藤田麻里. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var S:Double = Double(0.00)
    var B:Double = Double(0.00)
    var H:Double = Double(0.00)
    var C2:Double = Double(0.00)
    var C3:Double = Double(0.00)
    var L:Double = Double(0.00)
    
    @IBOutlet weak var test: UIView!
    @IBOutlet weak var test2: UIView!
    @IBOutlet weak var test3: UIView!
    @IBOutlet weak var Brightness: UISlider!
    @IBOutlet weak var Saturation: UISlider!
    @IBOutlet weak var Hue: UISlider!
    @IBOutlet weak var color: UISlider!
    @IBOutlet weak var Line: UISlider!
    @IBOutlet var Button: UIButton!
    @IBOutlet var moji: UILabel!
   
    
    //  let color :UIColor = UIColor(hue: 10.0,saturation: 10.7,brightness: CGFloat,alpha: CGFloat)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        Brightness.addTarget(self, action: "BsliderChanged:", for: UIControlEvents.valueChanged)
//        Saturation.addTarget(self, action: "SsliderChanged:", for: UIControlEvents.valueChanged)
//        Hue.addTarget(self, action: "HsliderChanged:", for: UIControlEvents.valueChanged)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hoge() {
       // print(sender.value)
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
    }
    @IBAction func SsliderChanged(_ sender: UISlider) {
        S = Double(sender.value / 100)
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(C2),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(C3),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        print(S,"えしゅ")
        print(sender.value)
    }
    @IBAction func BsliderChanged(_ sender: UISlider) {
        B = Double(sender.value / 100)
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(C2),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(C3),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        if B <= 50 {
            moji.textColor = UIColor(hue:217,saturation:1,brightness:100,alpha: 1.0)
        }else{
            moji.textColor = UIColor(hue:217,saturation:98,brightness:9,alpha: 1.0)
        }
        print(B,"ぶらいとねしゅ")
        print(sender.value)
        
    }
    @IBAction func HsliderChanged(_ sender: UISlider) {
        H = Double(sender.value / 100)
        if H >= 100 - Double(sender.value) {
            C2 = Double(sender.value) / Double(100) + Double(H) - Double(100)
            print(C2,"しきそお")
            print(sender.value)
            C3 = Double(sender.value) / Double(100) - Double(H)
            print(C3,"しきそお")
            print(sender.value)
            
        }else{
            C2 = Double(sender.value) / Double(100) + Double(H)
            print(C2,"しきそお")
            print(sender.value)
            C3 = Double(sender.value) / Double(100) - Double(H) + Double(100)
            print(C3,"しきそおaaaaa")
            print(sender.value)
        }
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(C2),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(C3),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        print(H,"しきそお")
        print(sender.value)
    }
    @IBAction func CsliderChanged(_ sender: UISlider) {
        if H >= 100 - Double(sender.value) {
            C2 = Double(sender.value) / Double(100) + Double(H) - Double(100)
            print(C2,"しきそお")
            print(sender.value)
            C3 = Double(sender.value) / Double(100) - Double(H)
            print(C3,"しきそお")
            print(sender.value)
            
        }else{
            C2 = Double(sender.value) / Double(100) + Double(H)
            print(C2,"しきそお")
            print(sender.value)
            C3 = Double(sender.value) / Double(100) - Double(H) + Double(100)
            print(C3,"しきそおaaaaa")
            print(sender.value)
        }
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(C2),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(C3),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
    }
    
    @IBAction func LinesliderChanged(_ sender: UISlider){
        if B <= 50 {
            moji.textColor = UIColor(hue:217,saturation:1,brightness:100,alpha: 1.0)//赤しか出ない！修正修正！！
        }else{
            moji.textColor = UIColor(hue:217,saturation:98,brightness:9,alpha: 1.0)
        }
    }
    
}

