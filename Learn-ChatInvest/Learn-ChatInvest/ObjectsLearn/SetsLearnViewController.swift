
import UIKit
import StoreKit

class SetsLearnViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    @IBAction func showTermsLearning(_ sender: Any) {
        if let urlLearning = URL(string: "https://onliner.by") {
                 UIApplication.shared.open(urlLearning)
             }
    }
    
    @IBAction func showPrivacyLearning(_ sender: Any) {
        if let urlLearning = URL(string: "https://mail.ru") {
                 UIApplication.shared.open(urlLearning)
             }
    }
    
    @IBAction func showrateOurAppLearning(_ sender: Any) {
        if #available(iOS 14.0, *) {
                   if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                       SKStoreReviewController.requestReview(in: scene)
                   }
               }
    }
    
}
