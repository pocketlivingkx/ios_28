
import UIKit

class ExamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableForExams: UITableView!
    var topicTitles = ["Fundamentals of finance and investments", "Choosing the right investment portfolio", "Stocks and stock market", "Bonds and fixed incom", "Investment funds and ETFs"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableForExams.showsVerticalScrollIndicator = false
        tableForExams.dataSource = self
        tableForExams.separatorStyle = .none
        tableForExams.delegate = self
        tableForExams.register(UINib(nibName: "LessonWithTimeLessonCell", bundle: nil), forCellReuseIdentifier: "LessonWithTimeLessonCell")
       
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 90
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonWithTimeLessonCell", for: indexPath) as! LessonWithTimeLessonCell
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = .clear
        cell.showFullVersionLessonLearn.tag = indexPath.row + 1
        cell.showFullVersionLessonLearn.addTarget(self, action: #selector(toTestsLearn), for: .touchUpInside)
        cell.nameLessonLearn.text = topicTitles[indexPath.row]
        cell.timeLessonLabel.text = "Tests: 2"
        cell.timeLessonLabel.textColor = .gray
        
        
               return cell
    }
    
    var testPartNumber = 0
    
    @objc func toTestsLearn(_ sender: UIButton) {
        testPartNumber = sender.tag
//        let stdLearn = UIStoryboard(name: "FullLessonViewController", bundle: nil)
//        let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "FullLessonViewController") as! FullLessonViewController
//        viewCoLearn.currentLesson = learnTopic.lessons[sender.tag]
//        viewCoLearn.learnTopic = learnTopic
//        
//        self.navigationController?.pushViewController(viewCoLearn, animated: true)
        
        showAlert()
    }
    
    @IBAction func toSetsLearning(_ sender: Any) {
        let std = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let viewCo = std.instantiateViewController(withIdentifier: "SetsLearnViewController") as! SetsLearnViewController

        present(viewCo, animated: true)
    }
    
    
    func showAlert() {
        let alertController = UIAlertController(title: "Choose Test", message: nil, preferredStyle: .alert)

        let test1Action = UIAlertAction(title: "Chapter 1", style: .default) { _ in
            self.navigateToFullLessonViewController(lessonIndex: 0)
        }
        alertController.addAction(test1Action)

        let test2Action = UIAlertAction(title: "Chapter 2", style: .default) { _ in
            self.navigateToFullLessonViewController(lessonIndex: 1)
        }
        alertController.addAction(test2Action)

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)

        present(alertController, animated: true, completion: nil)
    }
    
    func navigateToFullLessonViewController(lessonIndex: Int) {
        let stdLearn = UIStoryboard(name: "TestLearningVC", bundle: nil)
        guard let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "TestLearningVC") as? TestLearningVC else {
            return
        }
        viewCoLearn.topic = testPartNumber
        viewCoLearn.lesson = lessonIndex
        viewCoLearn.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(viewCoLearn, animated: true)
    }
}
