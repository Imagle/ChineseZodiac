//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by Lynn on 14-10-1.
//  Copyright (c) 2014年 Jerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset = 4

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        
        if let year = yearOfBirth.text.toInt(){
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named:String(imageNumber))
        }
        else {
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

