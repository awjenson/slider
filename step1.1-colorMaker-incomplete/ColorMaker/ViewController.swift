//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        
        //Initialize with sliders at minimum position
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
    }
    
    //    When the slider is moved the rectangular view changes its color.
    @IBAction func colorChanger(_ sender: AnyObject) {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        //updates colorView.background color based on slider positions
        //RGB values are of type Float, though UIColor requires type CGFloat so slider values cast as CGFLoat inside the constructor
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}

