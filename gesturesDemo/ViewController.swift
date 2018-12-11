//
//  ViewController.swift
//  gesturesDemo
//
//  Created by ANGEL GARCIA on 11/8/18.
//  Copyright © 2018 ANGEL GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blueUIView: UIView!
    @IBOutlet weak var yellowUIView: UIView!
    
    var isblue = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTap(_ sender: Any) {
        if isblue == true {
            blueUIView.backgroundColor = yellowUIView.backgroundColor
        }else{
            blueUIView.backgroundColor = .blue
        }
        isblue = !isblue
    
        
        
    }
    @IBAction func onPan(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        yellowUIView.center = CGPoint (x: point.x, y: point.y)
        print(point)
        
    }
    

}

