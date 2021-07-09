//
//  ViewController.swift
//  slidersColorGame
//
//  Created by Tato Admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColorRange: UIView!
    
    @IBOutlet weak var redColorValue: UIView!
    @IBOutlet weak var greenColorValue: UITextField!
    @IBOutlet weak var blueColorValue: UITextField!
        
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
//    private var redColor = CGFloat(redColorSlider.value)
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorSlider.value = 0.5
        redColorSlider.minimumValue = 0
        redColorSlider.maximumValue = 1
        redColorSlider.minimumTrackTintColor = .red
        
        greenColorSlider.value = 0.5
        greenColorSlider.minimumValue = 0
        greenColorSlider.maximumValue = 1
        greenColorSlider.minimumTrackTintColor = .green
        
        blueColorSlider.value = 0.5
        blueColorSlider.minimumValue = 0
        blueColorSlider.maximumValue = 1
        blueColorSlider.minimumTrackTintColor = .blue

    }
    
//    let color = UIColor(red: 0.8, green: 0.1, blue: 0.5, alpha: 1)

    @IBAction func redColorSet() {
        viewColorRange.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                 green: CGFloat(greenColorSlider.value),
                                                 blue: CGFloat(blueColorSlider.value),
                                                 alpha: 1)
    }
    
    @IBAction func greenColorSet() {
        viewColorRange.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                 green: CGFloat(greenColorSlider.value),
                                                 blue: CGFloat(blueColorSlider.value),
                                                 alpha: 1)
    }
    
    @IBAction func blueColorSet() {
        viewColorRange.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                 green: CGFloat(greenColorSlider.value),
                                                 blue: CGFloat(blueColorSlider.value),
                                                 alpha: 1)
    }
}

