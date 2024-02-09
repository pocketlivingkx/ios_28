

import UIKit

class ListLessonsLearnVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var coloredBackLearn: UIView!
    @IBOutlet weak var topicTitleLearn: UILabel!
    @IBOutlet weak var levelLabelLearn: UILabel!
    @IBOutlet weak var logoImageLearn: UIImageView!
    @IBOutlet weak var descrLabelLearn: UITextView!
    @IBOutlet weak var listLearnTableView: UITableView!
    
    var learnTopic: LessonLearnTopic!
    var color: UIColor!
    var level: String!
    var imName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        levelLabelLearn.backgroundColor = .gray.withAlphaComponent(0.5)
        levelLabelLearn.layer.cornerRadius = 8
        levelLabelLearn.clipsToBounds = true
        levelLabelLearn.text = level
        coloredBackLearn.backgroundColor = color
        topicTitleLearn.text = learnTopic.name
        logoImageLearn.image = UIImage(named: imName)
        descrLabelLearn.text = learnTopic.description
        
        listLearnTableView.showsVerticalScrollIndicator = false
        listLearnTableView.dataSource = self
        listLearnTableView.delegate = self
        let nib = UINib(nibName: "LessonWithTimeLessonCell", bundle: nil)
        listLearnTableView.register(nib, forCellReuseIdentifier: "LessonWithTimeLessonCell")
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 90
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        learnTopic.lessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LessonWithTimeLessonCell", for: indexPath) as! LessonWithTimeLessonCell
     
        cell.showFullVersionLessonLearn.tag = indexPath.row
        cell.showFullVersionLessonLearn.addTarget(self, action: #selector(onFullLesson), for: .touchUpInside)
        cell.nameLessonLearn.text = learnTopic.lessons[indexPath.row].title
        cell.timeLessonLabel.text = learnTopic.lessons[indexPath.row].duration
        
        
               return cell
    }
    
    @objc func onFullLesson(_ sender: UIButton) {
        let stdLearn = UIStoryboard(name: "FullLessonViewController", bundle: nil)
        let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "FullLessonViewController") as! FullLessonViewController
        viewCoLearn.currentLesson = learnTopic.lessons[sender.tag]
        viewCoLearn.learnTopic = learnTopic
        
        self.navigationController?.pushViewController(viewCoLearn, animated: true)
    }
    
    @IBAction func toBACKBUTTLearn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
