//
//  ButtonThree.swift
//  CustomButton
//
//  Created by Svetlana T on 31.07.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ButtonThree: UIControl {
    @IBOutlet private var iconImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    private func setup() {
        backgroundColor = .orange
        nameLabel.text = "Three"
        iconImageView.image = UIImage(named: "desp")
        
        layer.cornerRadius = 16.0
        layer.masksToBounds = true
    }
}
