//
//  ButtonOne.swift
//  CustomButton
//
//  Created by Svetlana T on 02.08.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ButtonOne: UIButton {
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var iconImageView: UIImageView!
    
    private let borderLayer: CAShapeLayer = CAShapeLayer()

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        borderLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
        borderLayer.frame = bounds
    }

    private func setup() {
        nameLabel.textColor = .red
        iconImageView.image = UIImage(named: "desp")
        
        borderLayer.strokeColor = UIColor.purple.cgColor
        borderLayer.fillColor = UIColor.clear.cgColor
        borderLayer.lineDashPattern = [8, 5]
        layer.addSublayer(borderLayer)
    }

    func set(name: String) {
        nameLabel.text = name
    }
}
