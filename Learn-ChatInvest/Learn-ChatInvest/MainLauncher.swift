
import UIKit

class MainLauncher: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gm = UserDefaults.standard.bool(forKey: AllYouNeedKeysLearn.isLearnLearn.rawValue)
        if gm {
            DispatchQueue.main.async {

                let learningBar = LearningBar()
                learningBar.modalPresentationStyle = .fullScreen
                learningBar.modalTransitionStyle = .crossDissolve
                self.present(learningBar, animated: true, completion: nil)
            }
        } else {
            DispatchQueue.main.async {
                
                let stdLearn = UIStoryboard(name: "LearningHowToViewController", bundle: nil)
                let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "LearningHowToViewController") as! LearningHowToViewController
                viewCoLearn.modalPresentationStyle = .fullScreen
                viewCoLearn.modalTransitionStyle = .crossDissolve
                self.present(viewCoLearn, animated: false)
            }
        }
        
    }


}


enum AllYouNeedKeysLearn: String {
   case isLearnLearn
    
}
