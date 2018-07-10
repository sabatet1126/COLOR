//
//  ViewController.swift
//  GoiUp
//
//  Created by 藤田麻里 on 2018/05/15.
//  Copyright © 2018年 藤田麻里. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    static var S:Double = Double(0.00)
    static var B:Double = Double(0.00)
    static var H:Double = Double(0.00)
    static var C2:Double = Double(0.00)
    static var C3:Double = Double(0.00)
    static var L:Double = Double(0.00)

    @IBOutlet  weak var test: UIView!
    @IBOutlet  weak var test2: UIView!
    @IBOutlet  weak var test3: UIView!
    @IBOutlet  var moji: UILabel!
    @IBOutlet  var moji2: UILabel!
    @IBOutlet  var moji3: UILabel!
    @IBOutlet  var Back: UIView!
    // ContainerView に Embed した UIPageViewController のインスタンスを保持する
    var pageViewController: UIPageViewController?
    
    // ページングして表示させる ViewControllerを保持する
    var vcArray = [Any]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ContainerView に Embed した UIPageViewController を取得する
        pageViewController = childViewControllers[0] as? UIPageViewController
        pageViewController!.dataSource = self
        
        pageViewController?.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    static func renew(){
        test.backgroundColor = UIColor(hue: CGFloat(H),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test2.backgroundColor = UIColor(hue: CGFloat(C2),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test3.backgroundColor = UIColor(hue: CGFloat(C3),saturation: CGFloat(S),brightness: CGFloat(B),alpha: 1.0)
        test.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        test2.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        test3.layer.cornerRadius = CGFloat(L)*UIScreen.main.bounds.size.width
        if B <= 0.7 {
            moji.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.1,brightness:0.9,alpha: 1.0)
            
        }else{
            moji.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji2.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            moji3.textColor = UIColor(hue:0.2,saturation:0.9,brightness:0.1,alpha: 1.0)
            
        }
    }

    /*public var pageMenu : CAPSPageMenu?
    
    var S:Double = Double(0.00)
    var B:Double = Double(0.00)
    var H:Double = Double(0.00)
    var C2:Double = Double(0.00)
    var C3:Double = Double(0.00)
    var L:Double = Double(0.00)
    
    
   
   
    
    //  let color :UIColor = UIColor(hue: 10.0,saturation: 10.7,brightness: CGFloat,alpha: CGFloat)
    override func viewDidLoad() {
        super.viewDidLoad(animated)
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orange]
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "<-", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.didTapGoToLeft))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "->", style: UIBarButtonItemStyle.done, target: self, action: #selector(ViewController.didTapGoToRight))
        
        var controllerArray : [UIViewController] = []
        let controller1 : TestTableViewController = TestTableViewController(nibName: "TestTableViewController", bundle: nil)
        controller1.title = "スライダー"
        controllerArray.append(controller1)
        let controller2 : TestCollectionViewController = TestCollectionViewController(nibName: "TestCollectionViewController", bundle: nil)
        controller2.title = "数値"
        controllerArray.append(controller2)
        let controller3 : TestViewController = TestViewController(nibName: "TestViewController", bundle: nil)
        controller3.title = "気分"
        controllerArray.append(controller3)
        
        let parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .viewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .selectionIndicatorColor(UIColor.orange),
            .bottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .menuHeight(40.0),
            .menuItemWidth(90.0),
            .centerMenuItems(true)
            ]
            pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
            
            self.addChildViewController(pageMenu!)
            self.view.addSubview(pageMenu!.view)
            
            pageMenu!.didMove(toParentViewController: self)
        ]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func didTapGoToLeft() {
        let currentIndex = pageMenu!.currentPageIndex
        
        if currentIndex > 0 {
            pageMenu!.moveToPage(currentIndex - 1)
        }
    }
    
    func didTapGoToRight() {
        let currentIndex = pageMenu!.currentPageIndex
        
        if currentIndex < pageMenu!.controllerArray.count {
            pageMenu!.moveToPage(currentIndex + 1)
        }
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
    
    
    */
}

extension ViewController : UIPageViewControllerDataSource {
    
    func getFirst() -> FirstViewController {
        return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
    }
    
    func getSecond() -> SecondViewController {
        return storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    }
    
    func getThird() -> ThirdViewController {
        return storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of:ThirdViewController.self){
            return getSecond()
        }else if viewController.isKind(of:SecondViewController.self){
            return getFirst()
        }else{
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: FirstViewController.self){
            return getSecond()
        }else if viewController.isKind(of: SecondViewController.self){
            return getThird()
        }else{
            return nil
        }
    }
}

