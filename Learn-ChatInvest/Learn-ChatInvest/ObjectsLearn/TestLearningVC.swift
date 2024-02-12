
import UIKit

class TestLearningVC: UIViewController {

    
    @IBOutlet weak var questionsCounterLabel: UILabel!
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    var topic: Int!
    var lesson: Int!
    var currentTest: Int!
    var currentQuestionIndex = 0
    var correctAnswers = 0
    var answerButtons: [UIButton] = []

    @IBOutlet weak var ans1: UIButton!
    @IBOutlet weak var ans2: UIButton!
    @IBOutlet weak var ans3: UIButton!
    @IBOutlet weak var ans4: UIButton!
    
    var allquestions: [Question] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        ans1.tag = 0
        ans2.tag = 1
        ans3.tag = 2
        ans4.tag = 3
        answerButtons = [ans1, ans2, ans3, ans4]
        if lesson == 0 {
            currentTest = topic * 2 - 1
        } else {
            currentTest = topic * 2
        }
        
        
        
        guard let fileURL = Bundle.main.url(forResource: "test\(currentTest!)", withExtension: "json") else {
            fatalError("File 'yourFileName.json' not found")
        }

        do {
            let jsonData = try Data(contentsOf: fileURL)
            let questionData = try JSONDecoder().decode(QuestionData.self, from: jsonData)
            self.allquestions = questionData.questions

        } catch {
            print("Error decoding JSON:", error)
        }
        
        
        displayQuestion(allquestions[currentQuestionIndex])

        
      
        
    }
    
    func displayQuestion(_ question: Question) {
        questionTextLabel.text = question.question
        for (index, answer) in question.options.enumerated() {
            answerButtons[index].setTitle(answer.option, for: .normal)
        }
    }
    
    @IBAction func toListLessonsLearn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let selectedAnswer = allquestions[currentQuestionIndex].options[sender.tag]
        if selectedAnswer.isCorrect {
            // Update score or perform any other action for correct answer
            correctAnswers += 1
        }

        // Move to the next question
        currentQuestionIndex += 1
        if currentQuestionIndex < allquestions.count {
            questionsCounterLabel.text = "Question \(currentQuestionIndex + 1)/5"
            displayQuestion(allquestions[currentQuestionIndex])
        } else {
            print (correctAnswers)
            
            var title = correctAnswers < 3 ? "Lost" : "Congrats!"
            var message = "Correct answers \(correctAnswers)/5\n" + (correctAnswers < 3 ? "Bad result, try again!" : "Good result!")
            
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

            let okAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
                self.navigationController?.popViewController(animated: true)
            }

            alertController.addAction(okAction)

            self.present(alertController, animated: true, completion:nil)
        }
    }
    

}

struct QuestionData: Decodable {
    let questions: [Question]
}

struct Question: Decodable {
    let question: String
    let options: [Option]
}

struct Option: Decodable {
    let option: String
    let isCorrect: Bool

    // Use CodingKeys to map "is_correct" to isCorrect
    private enum CodingKeys: String, CodingKey {
        case option
        case isCorrect = "is_correct"
    }
}
