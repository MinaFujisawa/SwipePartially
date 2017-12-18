//
//  ViewController.swift
//  SwipePartially
//
//  Created by MINA FUJISAWA on 2017/12/15.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var button: UIButton!

    let nc = NotificationCenter.default
    var observer: AnyObject?

    override func viewDidLoad() {
        super.viewDidLoad()
        setOkButton(selected: false)

        // set Notification to get selected(Bool)
        observer = nc.addObserver(forName: NSNotification.Name.selectOption,
                                  object: nil,
                                  queue: nil,
                                  using:
                                      { (notification) -> Void in
                                          self.setOkButton(selected: notification.object as! Bool)
                                  })
    }

    private func setOkButton(selected: Bool) {
        self.button.isEnabled = selected
        if selected {
            self.button.backgroundColor = UIColor.blue
        } else {
            self.button.backgroundColor = UIColor.gray
        }
    }
}

