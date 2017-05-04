//: Playground - noun: a place where people can play

import UIKit

class CircleView: UIView {
    
    override func draw(_ rect: CGRect) {
        // Do some fancy drawing here
        let path = UIBezierPath()
        

        // x^2 + y^2 = r^2
        // cos(ø) = x / r ==> x = r * cos(ø)
        // sin(ø) = y /r ==> y  = r * sin(ø)
        
        let radius: Double = Double(rect.width) / 2 - 20
        
        let centre = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path.move(to: CGPoint(x: centre.x + CGFloat(radius), y: centre.y))
        
        for i in stride(from: 0, to: 361.0, by: 1) {
            
            // radians = degrees * pi / 180
            let radians = i * Double.pi / 180
            
            let x = Double(centre.x) + radius * cos(radians)
            let y = Double(centre.y) + radius * sin(radians)

            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        UIColor.purple.setStroke()
        path.lineWidth = 5
        path.stroke()
    }
}

let view = CircleView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
view.backgroundColor = .white


