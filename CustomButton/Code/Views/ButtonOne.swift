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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupOutlets()
    }

    private func setup() {
        let borderLayer: CAShapeLayer = CAShapeLayer()
        borderLayer.strokeColor = UIColor.purple.cgColor
        borderLayer.fillColor = UIColor.clear.cgColor
        borderLayer.lineDashPattern = [8, 5]
        borderLayer.frame = bounds
        borderLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 12.0).cgPath
        layer.addSublayer(borderLayer)
    }
    
    private func setupOutlets() {
        nameLabel.textColor = .red
    }

    func set(name: String) {
        nameLabel.text = name
        iconImageView.image = UIImage(named: "desp")
    }
}
