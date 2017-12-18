//
//  OptionViewController.swift
//  SwipePartially
//
//  Created by MINA FUJISAWA on 2017/12/18.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController {

    @IBOutlet weak var requmentLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var option : Option!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = option.title
        bodyTextView.text = option.body
        imageView.image = UIImage(named: option.imageName)
        requmentLabel.text = "Can you bring \(option.requrement)?"
        
        checkButton.addTarget(self, action: #selector(tappedSelectButton), for: .touchUpInside)
        setSelectButton()
    }
    
    private func setSelectButton() {
        if option.selected {
            checkButton.backgroundColor = UIColor.blue
        } else {
            checkButton.backgroundColor = UIColor.lightGray
        }
    }
    
    @objc private func tappedSelectButton() {
        if option.selected {
            option.selected = false
        } else {
            option.selected = true
        }
        setSelectButton()
    }

}
