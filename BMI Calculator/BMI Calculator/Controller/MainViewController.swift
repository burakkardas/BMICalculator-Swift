import UIKit

class MainViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!

    let bmi = BMI()

    var height = 0.0
    var weight = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func ShowAlert(bmiModel: BMIModel) {
        let alert = UIAlertController(title: bmiModel.title, message: bmiModel.description, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    @IBAction func CalculateButton(_ sender: UIButton) {
        let heightInMeters = height / 100
        let bmiResult = weight / (heightInMeters * heightInMeters)
        let bmiModel = bmi.getBMIResult(bmi: Int(bmiResult))
        ShowAlert(bmiModel: bmiModel)
    }

    @IBAction func slider(_ sender: UISlider) {
        if sender.tag == 0 {
            let height = Int(sender.value)
            self.height = Double(sender.value)
            heightLabel.text = "\(height) cm"
        }
        else {
            let weight = Int(sender.value)
            self.weight = Double(sender.value)
            weightLabel.text = "\(weight) kg"
        }
    }
}
