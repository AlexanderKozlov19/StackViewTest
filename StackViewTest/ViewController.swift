//
//  ViewController.swift
//  StackViewTest
//
//  Created by Alexander Kozlov on 21.07.2018.
//  Copyright © 2018 Alexander Kozlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var buttonHideShow: UIButton!
    @IBOutlet weak var labelShortDescription: UILabel!
    @IBOutlet weak var texteditDescription: UITextView!
    @IBAction func onShowHideTap(_ sender: Any) {
        texteditDescription.isHidden = !texteditDescription.isHidden
        labelShortDescription.isHidden = !texteditDescription.isHidden
        labelShortDescription.text = texteditDescription.text
        buttonHideShow.setTitle( labelShortDescription.isHidden ? "Hide" : "Show", for: UIControlState.normal)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        texteditDescription.textContainerInset = .init(top: 0, left: 0, bottom: 0, right: 0)
        texteditDescription.textContainer.lineFragmentPadding = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

