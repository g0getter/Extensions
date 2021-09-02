//
//  ViewController.swift
//  Extensions
//
//  Created by 여나경 on 2021/09/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.attributedText = NSMutableAttributedString()
            .bold("Bold\n", fontSize: 20)
            .regular("Regular\n", fontSize: 25)
            .underlined("Underlined\n", fontSize: 30)
            .italic("Italic\n", fontSize: 33)
            .highlight("Highlight\n", fontSize: 34, highlightColor: .purple)
            .highlight("Orange\n", fontSize: 35, highlightColor: .orange)
            .kern("Kern\n", fontSize: 45, kernValue: 30)
    }


}

