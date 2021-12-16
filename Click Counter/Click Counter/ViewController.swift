//
//  ViewController.swift
//  Click Counter
//
//  Created by Maverick on 2021/12/15.
//

import UIKit

class ViewController: UIViewController {
    // Initialize the variable
    var count = 0
    var label: UILabel! // have to add "!", because it is nil before the compiling.
    // var label = UILabel()
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60) // position
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        // label2
        let label2 = UILabel()
        label2.frame = CGRect(x: 250, y: 150, width: 60, height: 60)
        label2.text = "0"
        view.addSubview(label2)
        self.label2 = label2
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Plus", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        // combine the click action with the incrementCount function
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // button2
        let button2 = UIButton()
        button2.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        button2.setTitle("Minus", for: .normal)
        button2.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decreaseCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = self.label.text
        changeBackgroundColr() // change the background color randomly
    }
    
    @objc func decreaseCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = self.label.text
        changeBackgroundColr()
    }
    
    // change the background with random color
    // use CGFloat
    func changeBackgroundColr() {
        let R = CGFloat(arc4random()%256)/255.0
        let G = CGFloat(arc4random()%256)/255.0
        let B = CGFloat(arc4random()%256)/255.0
        self.view.backgroundColor = UIColor(red: R, green: G, blue: B, alpha: 1)
    }
}

