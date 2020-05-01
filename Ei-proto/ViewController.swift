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
        // 円弧 -------------------------------------
        let r = Double(UIScreen.main.bounds.size.width / 2 - 20)
        let arc = UIBezierPath(arcCenter: CGPoint(x:UIScreen.main.bounds.size.width / 2, y:UIScreen.main.bounds.size.height / 2), radius: CGFloat(r),  startAngle: 0, endAngle: CGFloat(2.0 * Double.pi), clockwise: false)
        arc.lineWidth = 10
        arc.stroke()
        
        for i in 0...12 {
            let path2 = UIBezierPath()
            let center2 = CGPoint(x: rect.width / 2, y: rect.height / 2)
            path2.move(to:center2)
            let radians = Double(i) * Double.pi / 6
            let x2 = Double(center2.x) + r * cos(radians)
            let y2 = Double(center2.y) + r * sin(radians)
            path2.addLine(to: CGPoint(x:x2, y:y2))
            path2.stroke()
        }
    }
}
