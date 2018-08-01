//
//  ButtonFour.swift
//  CustomButton
//
//  Created by Svetlana T on 01.08.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ButtonFour: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .green
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let width: CGFloat = rect.width / 4
        let height: CGFloat = width
        let x: CGFloat = rect.midX - height / 2
        let y: CGFloat = rect.midY - width / 2
        let circleRect = CGRect(x: x, y: y, width: width, height: height)
        
        let circlePath = UIBezierPath(ovalIn: circleRect)
        UIColor.red.set()
        circlePath.fill()
        
        let centerCircleRect = CGRect(origin: CGPoint(x: rect.midX - circleRect.width / 4, y: circleRect.minY + circleRect.height / 4), size: CGSize(width: circleRect.width / 2, height: circleRect.height / 2))
        let centerCirclePath = UIBezierPath(ovalIn: centerCircleRect)
        UIColor.white.set()
        centerCirclePath.fill()
        
        
    }
}
