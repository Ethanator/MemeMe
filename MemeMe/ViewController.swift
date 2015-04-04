//
//  ViewController.swift
//  MemeMe
//
//  Created by Yuxuan Chen on 3/28/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Labels
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        var label2 = UILabel()
        label2.frame = CGRectMake(200, 150, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        // Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 120, 60)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        var button2 = UIButton()
        button2.frame = CGRectMake(150, 300, 120, 60)
        button2.setTitle("Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        var button3 = UIButton()
        button3.frame = CGRectMake(150, 350, 140, 60)
        button3.setTitle("Toggle Color", forState: .Normal)
        button3.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button3)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        button3.addTarget(self, action: "toggleColor", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount() {
        if self.count == 0 { return }
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func toggleColor() {
        self.view.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
        var randomRed = CGFloat(drand48())
        var randomGreen = CGFloat(drand48())
        var randomBlue = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}

