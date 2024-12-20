class BMI {
    private var bmiModels: [BMIModel] = [
        BMIModel(title: "Underweight", description: "You have a BMI of less than 18.5, you are underweight."),
        BMIModel(title: "Normal", description: "You have a BMI of 18.5 to 24.9, you are normal."),
        BMIModel(title: "Overweight", description: "You have a BMI of 25 to 29.9, you are overweight."),
        BMIModel(title: "Obese", description: "You have a BMI of 30 or more, you are"),
    ]
    
    func getBMIResult(bmi: Int) -> BMIModel {
        if bmi < 18 {
            return bmiModels[0]
        } else if bmi >= 18 && bmi < 25 {
            return bmiModels[1]
        } else if bmi >= 25 && bmi < 30 {
            return bmiModels[2]
        } else {
            return bmiModels[3]
        }
    }
    
    func CalculateBMI(height: Int, weight: Int) -> Int {
        return weight / (height * height)
    }
}

struct BMIModel {
    let title: String
    let description: String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
