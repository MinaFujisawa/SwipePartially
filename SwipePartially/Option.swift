//
//  Option.swift
//  SwipePartially
//
//  Created by MINA FUJISAWA on 2017/12/16.
//  Copyright © 2017 MINA FUJISAWA. All rights reserved.
//

import UIKit

struct Option {
    let title: String
    let body: String
    let imageName: String
    let requrement: String
    var selected: Bool
    
    
}

struct OptionSet {
    static func options() -> [Option] {
        let option1 = Option(title: "Hiking", body: "let's go to hiking", imageName: "hiking", requrement: "Water", selected: false)
        let option2 = Option(title: "Beach", body: "let's go to hiking", imageName: "beach", requrement: "Hat", selected: false)
        let option3 = Option(title: "Pool", body: "let's go to hiking", imageName: "pool", requrement: "Swiming wear", selected: false)
        return [option1, option2, option3]
    }
}
