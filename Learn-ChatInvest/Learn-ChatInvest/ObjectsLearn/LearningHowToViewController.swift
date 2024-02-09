

import UIKit

class LearningHowToViewController: UIViewController {

    @IBOutlet weak var colorViewSwift: UIView!
    @IBOutlet weak var l1Learn: UILabel!
    @IBOutlet weak var im1Learn: UIImageView!
    @IBOutlet weak var tV1Learn: UITextView!
    @IBOutlet weak var but1Learn: UIButton!
    @IBOutlet weak var pageLearn: UIPageControl!
    var colors = [UIColor(red: 0.1686, green: 0.8039, blue: 0.9843, alpha: 1.0),
                  UIColor(red: 0.0745, green: 0.7137, blue: 0.0039, alpha: 1.0),
                  UIColor(red: 0.4353, green: 0.1804, blue: 0.9961, alpha: 1.0),
                  UIColor(red: 0.1176, green: 0.7059, blue: 0.9216, alpha: 1.0)
                  
                  
    ]
    var PageData: PagesData!
    override func viewDidLoad() {
        super.viewDidLoad()
        but1Learn.layer.cornerRadius = 8
        but1Learn.clipsToBounds = true
        if let urlToFile = Bundle.main.url(forResource: "learnlearn", withExtension: "json") {
            do {
                let data = try Data(contentsOf: urlToFile)
                let decoder = JSONDecoder()
                let pagesData = try decoder.decode(PagesData.self, from: data)
                PageData = pagesData
            } catch {
                print("Error parsing ")
            }
        }
        pageLearn.isUserInteractionEnabled = false
        l1Learn.text = PageData.pages[0].name
        im1Learn.image = UIImage(named: PageData.pages[0].imageName)
        tV1Learn.text = PageData.pages[0].textForTV
    }
    var step = 0
    @IBAction func onContLearn(_ sender: Any) {
        step += 1
        if step < PageData.pages.count {
            l1Learn.text = PageData.pages[step].name
            im1Learn.image = UIImage(named: PageData.pages[step].imageName)
            tV1Learn.text = PageData.pages[step].textForTV
            pageLearn.currentPage = step
            colorViewSwift.backgroundColor = colors[step]
        } else {
            UserDefaults.standard.setValue(true, forKey: AllYouNeedKeysLearn.isLearnLearn.rawValue)
            
            let learningBar = LearningBar()
            learningBar.modalPresentationStyle = .fullScreen
            learningBar.modalTransitionStyle = .crossDissolve
            self.present(learningBar, animated: true, completion: nil)
        }
        
    }
    
}

struct Page: Codable {
    let name: String
    let imageName: String
    let textForTV: String
}

struct PagesData: Codable {
    let pages: [Page]
}
