//
//  FirstViewController.swift
//  GoiUp
//
//  Created by 橋詰明宗 on 2018/07/10.
//  Copyright © 2018年 藤田麻里. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
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
        ViewController.L = Double(sender.value)
       test.layer.cornerRadius = CGFloat(ViewController.L)*UIScreen.main.bounds.size.width
        test2.layer.cornerRadius = CGFloat(ViewController.L)*UIScreen.main.bounds.size.width
        test3.layer.cornerRadius = CGFloat(ViewController.L)*UIScreen.main.bounds.size.width
        print(sender.value)
    }
    @IBAction func SsliderChanged(_ sender: UISlider) {
        ViewController.S = Double(sender.value / 100)
        test.backgroundColor = UIColor(hue: CGFloat(ViewController.H),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(ViewController.C2),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(ViewController.C3),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        print(ViewController.S,"えしゅ")
        print(sender.value)
    }
    @IBAction func BsliderChanged(_ sender: UISlider) {
        ViewController.B = Double(sender.value / 100)
        test.backgroundColor = UIColor(hue: CGFloat(ViewController.H),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(ViewController.C2),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(ViewController.C3),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        if ViewController.B <= 0.7 {
            moji.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            
        }else{
            moji.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            
        }
        print(ViewController.B,"ぶらいとねしゅ")
        print(sender.value)
        
    }
    @IBAction func HsliderChanged(_ sender: UISlider) {
        ViewController.H = Double(sender.value / 100)
        if ViewController.H >= 100 - Double(sender.value) {
            ViewController.C2 = Double(sender.value) / Double(100) + Double(H) - Double(100)
            print(ViewController.C2,"しきそお")
            print(sender.value)
            ViewController.C3 = Double(sender.value) / Double(100) - Double(H)
            print(ViewController.C3,"しきそお")
            print(sender.value)
            
        }else{
            ViewController.C2 = Double(sender.value) / Double(100) + Double(H)
            print(ViewController.C2,"しきそお")
            print(sender.value)
            ViewController.C3 = Double(sender.value) / Double(100) - Double(H) + Double(100)
            print(ViewController.C3,"しきそおaaaaa")
            print(sender.value)
        }
        test.backgroundColor = UIColor(hue: CGFloat(ViewController.H),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(ViewController.C2),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(ViewController.C3),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        print(ViewController.H,"しきそお")
        print(sender.value)
    }
    @IBAction func CsliderChanged(_ sender: UISlider) {
        if ViewController.H >= 100 - Double(sender.value) {
            ViewController.C2 = Double(sender.value) / Double(100) + Double(ViewController.H) - Double(100)
            print(ViewController.C2,"しきそお")
            print(sender.value)
            ViewController.C3 = Double(sender.value) / Double(100) - Double(ViewController.H)
            print(ViewController.C3,"しきそお")
            print(sender.value)
            
        }else{
            ViewController.C2 = Double(sender.value) / Double(100) + Double(ViewController.H)
            print(ViewController.C2,"しきそお")
            print(sender.value)
            ViewController.C3 = Double(sender.value) / Double(100) - Double(ViewController.H) + Double(100)
            print(ViewController.C3,"しきそおaaaaa")
            print(sender.value)
        }
        test.backgroundColor = UIColor(hue: CGFloat(ViewController.H),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(ViewController.C2),saturation: CGFloat(ViewController.S),brightness: CGFloat(ViewController.B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(ViewController.C3),saturation: CGFloat(ViewController.S),brightness: CGFloat(B),alpha: 1.0)
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
