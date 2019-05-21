//
//  ViewController.swift
//  chapter3
//
//  Created by Silver_Gold on 5/19/19.
//  Copyright © 2019 Silver_Gold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnpressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: text)
        let attribute = [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: lbl.font.pointSize)
        ]
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attribute, range: nameRange)
        lbl.attributedText = styledText
    }
    
}

