//
//  ViewController.swift
//  Ei-proto
//
//  Created by Hiroshi Imamasu on 2020/05/01.
//  Copyright © 2020年 Hiroshi Imamasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let circleView = Circle(frame: CGRect(x:0, y: 0, width: UIScreen.main.bounds.size.width, height:UIScreen.main.bounds.size.height))
        circleView.backgroundColor = .white
        
       self.view.addSubview(circleView)
    }


}


class Circle: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        
        let radius: Double = Double(UIScreen.main.bounds.size.width / 2 - 20)
        
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        
        for i in stride(from: 0, to: 361.0, by: 1) {
            let radians = i * Double.pi / 180
            
            let x = Double(center.x) + radius * cos(radians)
            let y = Double(center.y) + radius * sin(radians)
            
            path.addLine(to: CGPoint(x:x, y:y))
            print(x, y)
        }
        
        path.stroke()
        
    }
}
