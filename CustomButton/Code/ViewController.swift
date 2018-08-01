//
//  ViewController.swift
//  CustomButton
//
//  Created by Svetlana T on 30.07.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var buttonTwo: UIButton!
    @IBOutlet private var buttonThree: ButtonThree!
    @IBOutlet private var buttonFour: ButtonFour!
    
    private var isRounded: Bool = false
    private let duration: TimeInterval = 0.8
    private let shortInterval: TimeInterval = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonTwo()
        configureButtonThree()
    }

    @IBAction func buttonOneDidSelect(_ sender: UIButton) {
        print("one")
    }
    
    @IBAction func buttonThreeDidSelect(_ sender: ButtonThree) {
        UIView.animate(withDuration: shortInterval, animations: { [weak self] in
            guard let `self` = self else { return }
            self.buttonThree.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { (_) in
            UIView.animate(withDuration: self.shortInterval, animations: { [weak self] in
                guard let `self` = self else { return }
                self.buttonThree.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
    }
    
    @IBAction func buttonFourDidSelect(_ sender: ButtonFour) {
        UIView.animate(withDuration: duration) { [weak self] in
            guard let `self` = self else { return }
            self.hasRoundCorners(self.isRounded)
            self.isRounded.toggle()
        }
    }
    
    private func configureButtonTwo() {
        buttonTwo.setAttributedTitle(getAttributedTitle(), for: .normal)
    }
    
    private func configureButtonThree() {
        buttonThree.set()
    }
    
    private func hasRoundCorners(_ isRounded: Bool) {
        buttonFour.layer.cornerRadius = isRounded ? 0.0 : buttonFour.bounds.height / 2
        buttonFour.layer.masksToBounds = true
    }
    
    private func getAttributedTitle() -> NSAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Arial", size: 64.0)!,
                                                         .foregroundColor: UIColor.purple]
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "desp")
        let imageAttributedString = NSAttributedString(attachment: imageAttachment)
        
        let attributedString = NSMutableAttributedString(string: "", attributes: attributes)
        attributedString.append(imageAttributedString)
        let attrString = NSAttributedString(string: "Second", attributes: attributes)
        attributedString.append(attrString)
        
        return attributedString
    }
}

