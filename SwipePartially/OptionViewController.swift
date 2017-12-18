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
    var selected = false
    var option: Option!
    let nc = NotificationCenter.default

    override func viewDidLoad() {
        super.viewDidLoad()
        setupContents()

        checkButton.addTarget(self, action: #selector(tappedSelectButton), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nc.post(name: .selectOption, object: selected)
    }
    
    private func setupContents() {
        titleLabel.text = option.title
        bodyTextView.text = option.body
        imageView.image = UIImage(named: option.imageName)
        requmentLabel.text = "Can you bring \(option.requrement)?"
        setSelectButton()
    }
    
    private func setSelectButton() {
        if selected {
            checkButton.backgroundColor = UIColor.blue
        } else {
            checkButton.backgroundColor = UIColor.lightGray
        }
    }

    @objc private func tappedSelectButton() {
        if selected {
            selected = false
        } else {
            selected = true
        }
        setSelectButton()
        nc.post(name: .selectOption, object: selected)
    }
}

extension Notification.Name {
    static let selectOption = Notification.Name("selectNotification")
}
