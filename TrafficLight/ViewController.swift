
import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 12
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    @IBAction func startButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        
        let lights = [redLightView, yellowLightView, greenLightView]
        let alphaValues = lights.map({round(($0!.alpha)*100)/100})
        
        switch alphaValues {
        case [0.3, 0.3, 0.3]:
            redLightView.alpha = 1
        case [1.0, 0.3, 0.3]:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        case [0.3, 1.0, 0.3]:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        case [0.3, 0.3, 1.0]:
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        default: break
        }
    }
}

