//
//  ViewController.swift
//  slidersColorGame
//
//  Created by Tato Admin on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColorRange: UIView!

    @IBOutlet weak var redColorValue: UILabel!
    @IBOutlet weak var greenColorValue: UILabel!
    @IBOutlet weak var blueColorValue: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorSlider.value = 0.5
        greenColorSlider.value = 0.5
        blueColorSlider.value = 0.5
        
        redColorSlider.minimumValue = 0
        greenColorSlider.minimumValue = 0
        blueColorSlider.minimumValue = 0
        
        redColorSlider.maximumValue = 1
        greenColorSlider.maximumValue = 1
        blueColorSlider.maximumValue = 1
        
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
        
        redColorValue.text = String(redColorSlider.value)
        greenColorValue.text = String(greenColorSlider.value)
        blueColorValue.text = String(blueColorSlider.value)
        
        viewColorRange.layer.cornerRadius = 15

    }

    @IBAction func redColorSet() {
        
        let redValue = String(round(redColorSlider.value * 100) / 100)
        let redColor = UIColor(red: CGFloat(redColorSlider.value),
                               green: CGFloat(greenColorSlider.value),
                               blue: CGFloat(blueColorSlider.value),
                               alpha: 1)
        
        redColorValue.text = redValue
        viewColorRange.backgroundColor = redColor
    }
    //        я думал о том, чтобы выделить все строки логическими отступами, но тогда слишком разреженно выглядит код. поэтому оставил так :)
    //        делать ли эти свойства приватными? я не увидел возможности обратиться к этой функции дальше... или я что-то не понял :)
    
    @IBAction func greenColorSet() {
        
        let greenValue = String(round(greenColorSlider.value * 100) / 100)
        let greenColor = UIColor(red: CGFloat(redColorSlider.value),
                               green: CGFloat(greenColorSlider.value),
                               blue: CGFloat(blueColorSlider.value),
                               alpha: 1)
        
        greenColorValue.text = greenValue
        viewColorRange.backgroundColor = greenColor
    }
    
    @IBAction func blueColorSet() {
        
        let blueValue = String(round(blueColorSlider.value * 100) / 100)
        let blueColor = UIColor(red: CGFloat(redColorSlider.value),
                                green: CGFloat(greenColorSlider.value),
                                blue: CGFloat(blueColorSlider.value),
                                alpha: 1)
        
        blueColorValue.text = blueValue
        viewColorRange.backgroundColor = blueColor
    }
    
}

