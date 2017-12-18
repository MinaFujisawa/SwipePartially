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
}

struct OptionSet {
    static func options() -> [Option] {
        let option1 = Option(title: "Stanley Park", body: "Yoga classes are coming back to Stanley Park for eight sessions! Starting on Monday evenings, May 8th through June 26th 6:00 pm to 7:00 pm on the Acre Lawn, next to the Pavilion Annex.", imageName: "park", requrement: "yoga mat")
        
        let option2 = Option(title: "VanDusen Botanical Garden", body: "VanDusen Botanical Garden is a 55-acre oasis in the heart of Vancouver with over 7,500 plant species and varieties from around the world! Spot and photograph local wildlife, find your way through an Elizabethan hedge maze, unwind in a serene setting, dine on the patios of Truffles Cafe or Shaughnessy Restaurant, or browse the garden-themed gift shop.", imageName: "garden", requrement: "camera")
        
        let option3 = Option(title: "Grouse mountain", body: "Just 15 minutes from downtown Vancouver, Grouse Mountain attracts locals and tourists alike", imageName: "grouse", requrement: "beverage")
        
        return [option1, option2, option3]
    }
}
