
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewColorRange: UIView!
    
    @IBOutlet weak var redColorValueLabel: UILabel!
    @IBOutlet weak var greenColorValueLabel: UILabel!
    @IBOutlet weak var blueColorValueLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColorRange.layer.cornerRadius = 15
        
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
        
        redColorValueLabel.text = String(redColorSlider.value)
        greenColorValueLabel.text = String(greenColorSlider.value)
        blueColorValueLabel.text = String(blueColorSlider.value)
        
    }
    
    @IBAction func redColorSet() {
        
        let redColorValue = String(round(redColorSlider.value * 100) / 100)
        
        redColorValueLabel.text = redColorValue
        
        backgroundColors()
    }
    //        я думал о том, чтобы выделить все строки логическими отступами, но тогда слишком разреженно выглядит код. поэтому оставил так :)
    //        делать ли эти свойства приватными? я не увидел возможности обратиться к этой функции дальше... или я что-то не понял :)
    
    @IBAction func greenColorSet() {
        
        let greenColorValue = String(round(greenColorSlider.value * 100) / 100)
        
        greenColorValueLabel.text = greenColorValue
        
        backgroundColors()
    }
    
    @IBAction func blueColorSet() {
        
        let blueColorValue = String(round(blueColorSlider.value * 100) / 100)
      
        blueColorValueLabel.text = blueColorValue
        
        backgroundColors()
    }
    
    private func backgroundColors() {
        viewColorRange.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                 green: CGFloat(greenColorSlider.value),
                                                 blue: CGFloat(blueColorSlider.value),
                                                 alpha: 1)
    }
    
}

