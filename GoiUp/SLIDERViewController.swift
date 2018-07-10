//
//  SLIDERViewController.swift
//  GoiUp
//
//  Created by 藤田麻里 on 2018/07/03.
//  Copyright © 2018年 藤田麻里. All rights reserved.
//

import UIKit

class SLIDERViewController: UIViewController {

    var S:Double = Double(0.00)
    var B:Double = Double(0.00)
    var H:Double = Double(0.00)
    var C2:Double = Double(0.00)
    var C3:Double = Double(0.00)
    var L:Double = Double(0.00)
    
   
    @IBOutlet var Back: UIView!
    @IBOutlet weak var Brightness: UISlider!
    @IBOutlet weak var Saturation: UISlider!
    @IBOutlet weak var Hue: UISlider!
    @IBOutlet weak var color: UISlider!
    @IBOutlet weak var Line: UISlider!
    @IBOutlet var Button: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func LinesliderChanged(_ sender: UISlider){
        L = Double(sender.value)
        test.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        test2.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        test3.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        print(sender.value)
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
        if B <= 0.7 {
            moji.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            
        }else{
            moji.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
