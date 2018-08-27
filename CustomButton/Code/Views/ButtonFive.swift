//
//  ButtonFive.swift
//  CustomButton
//
//  Created by Svetlana T on 02.08.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ButtonFive: UIButton {
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var contentView: UIView!
    
    private var gradientLayer: CAGradientLayer = CAGradientLayer()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func loadNib() {
        Bundle.main.loadNibNamed("ButtonFive", owner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
    }

    private func setup() {
        nameLabel.textColor = .blue
        iconImageView.image = UIImage(named: "desp")
        
        gradientLayer.colors = [UIColor.yellow.cgColor,
                                UIColor.red.cgColor]
        gradientLayer.locations = [0.0, 0.75]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func set(name: String) {
        nameLabel.text = name
    }
}
