//
//  ButtonThree.swift
//  CustomButton
//
//  Created by Svetlana T on 31.07.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ButtonThree: UIControl {
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        backgroundColor = .orange
        layer.cornerRadius = 16.0
        layer.masksToBounds = true
    }

    func set() {
        iconImageView.image = UIImage(named: "desp")
        nameLabel.text = "Three"
    }
}
