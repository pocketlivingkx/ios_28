
import UIKit

class FullLessonViewController: UIViewController {

    var learnTopic: LessonLearnTopic!

    @IBOutlet weak var lessonMainTitle: UILabel!
    @IBOutlet weak var lessonTitle: UILabel!
    @IBOutlet weak var lessonText: UITextView!
    
    @IBOutlet weak var sheeter: UIPageControl!
    
    
    var currentLesson: LessonLearn!
    var currentIndexLearn = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        if let index = learnTopic.lessons.firstIndex(of: currentLesson) {
            print("Index of 'qq':", index)
currentIndexLearn = index
        } else {
            print("'qq' not found ")
        }
        lessonMainTitle.text = "Lesson \(currentIndexLearn + 1)"
        lessonTitle.text = currentLesson.title
        lessonText.text = currentLesson.text
        sheeter.isUserInteractionEnabled = false
        sheeter.numberOfPages = learnTopic.lessons.count
        sheeter.currentPage = currentIndexLearn

    }
    
    @IBAction func toBackLesson(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func toNextLearnLesson(_ sender: Any) {
        currentIndexLearn += 1
        if currentIndexLearn <= learnTopic.lessons.count - 1 {
            currentLesson = learnTopic.lessons[currentIndexLearn]
            lessonMainTitle.text = "Lesson \(currentIndexLearn + 1)"
            lessonTitle.text = currentLesson.title
            lessonText.text = currentLesson.text
            sheeter.currentPage = currentIndexLearn
            
        }
    }
    
}
