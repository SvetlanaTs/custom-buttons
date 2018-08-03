//
//  ViewController.swift
//  CustomButton
//
//  Created by Svetlana T on 30.07.2018.
//  Copyright © 2018 Nemis. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var buttonOne: ButtonOne!
    @IBOutlet private var buttonTwo: UIButton!
    @IBOutlet private var buttonThree: ButtonThree!
    @IBOutlet private var buttonFour: ButtonFour!
    @IBOutlet private var buttonFive: ButtonFive!
    
    private var isRounded: Bool = false
    private let duration: TimeInterval = 0.8
    private let shortInterval: TimeInterval = 0.3

    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonOne()
        configureButtonTwo()
        configureButtonThree()
        configureButtonFive()
    }
    
    // MARK: - Button One
    
    @IBAction private func buttonOneDidSelect(_ sender: ButtonOne) {
        print("one")
    }
    
    private func configureButtonOne() {
        buttonOne.set(name: "First Button")
    }
    
    // MARK: - Button Two
    
    private func configureButtonTwo() {
        buttonTwo.setAttributedTitle(setupAttributedTitle(), for: .normal)
    }
    
    // MARK: - Button Three
    
    @IBAction private func buttonThreeDidSelect(_ sender: ButtonThree) {
        UIView.animate(withDuration: shortInterval, animations: {
            self.buttonThree.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        }) { _ in
            UIView.animate(withDuration: self.shortInterval, animations: {
                self.buttonThree.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            })
        }
    }
    
    private func configureButtonThree() {
        buttonThree.set()
    }
    
    // MARK: - Button Four
    
    @IBAction private func buttonFourDidSelect(_ sender: ButtonFour) {
        UIView.animate(withDuration: duration) {
            self.setupRoundCorners(self.isRounded)
            self.isRounded.toggle()
        }
    }
    
    // MARK: - Button Five
    
    @IBAction private func buttonFiveDidSelect(_ sender: ButtonFive) {
        print("five")
    }
    
    private func configureButtonFive() {
        buttonFive.set(name: "Five")
    }
    
    // MARK: - Helpers
    
    private func setupRoundCorners(_ isRounded: Bool) {
        buttonFour.layer.cornerRadius = isRounded ? 0.0 : buttonFour.bounds.height / 2
        buttonFour.layer.masksToBounds = true
    }
    
    private func setupAttributedTitle() -> NSAttributedString {
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
