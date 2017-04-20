//
//  ViewController.swift
//  Literal
//
//  Created by gaojiji@gmail.com on 04/20/2017.
//  Copyright (c) 2017 gaojiji@gmail.com. All rights reserved.
//

import UIKit
import Literal

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UILabel()
        view.textAlignment = .center
        scrollView.addSubview(view)
        scrollView.contentInset = [64, 0, 0, 0] // literal

        view.frame = [10, 0, 200, 100]  // literal
        view.layer.borderWidth = 0.5

        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = [0, 5]  // literal
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.8

        let text = NSMutableAttributedString(string: "Hello World!")
        let attrs = [NSFontAttributeName: UIFont.systemFont(ofSize: 25)]
        text.setAttributes(attrs, range: [0, 1]) // literal
        text.setAttributes(attrs, range: [6, 1]) // literal
        view.attributedText = text
    }


}

