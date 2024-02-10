
import UIKit
import StoreKit

class SetsLearnViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    @IBAction func showTermsLearning(_ sender: Any) {
        if let urlLearning = URL(string: "https://docs.google.com/document/d/1PNlPEgnkDa96ePQM9tx-ISZ_G257g8eaMTV8Yin3y8M/edit?usp=sharing") {
                 UIApplication.shared.open(urlLearning)
             }
    }
    
    @IBAction func showPrivacyLearning(_ sender: Any) {
        if let urlLearning = URL(string: "https://docs.google.com/document/d/1uZ2eCjGWsrRaSmS-KA62ujEy1FYlpIAJfZbAAHMd9-Q/edit?usp=sharing") {
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
