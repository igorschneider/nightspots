//
//  FilterViewController.swift
//  Nightspots
//
//  Created by MacBook Pro on 7/8/16.
//  Copyright © 2016 Igor Schneider. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class FilterViewController: UIViewController {
    
    
    @IBOutlet weak var distanceSlider: UISlider!

    @IBOutlet weak var distanceLabel: UILabel!
    
    
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        
        self.distanceLabel.text = Int(self.distanceSlider.value).description + " miles"
        
    }
    
    
    
   
}
