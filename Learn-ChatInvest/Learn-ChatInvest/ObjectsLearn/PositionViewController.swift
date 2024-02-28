
import UIKit
import Alamofire

class PositionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITabBarControllerDelegate {
    

    @IBOutlet weak var postionTable: UITableView!
    
    var pairs = ["EUR/USD",       "USD/JPY",             "GBP/USD",          "AUD/USD",          "USD/CAD",                "USD/CNY",                 "USD/CHF",            "USD/HKD",                 "EUR/GBP",               "USD/KRW"]
    

    @IBOutlet weak var infoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.delegate = self

        postionTable.showsVerticalScrollIndicator = false
        postionTable.dataSource = self
        postionTable.delegate = self
        let nib = UINib(nibName: "PositionTableViewCell", bundle: nil)
        postionTable.register(nib, forCellReuseIdentifier: "PositionTableViewCell")
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        // Get the currently selected view controller
        if tabBarController.selectedIndex == 1 {
           // self.runCheckInet()
            print("run!!!!!!!!!!!!!")
        }
        }
    
    override func viewWillAppear(_ animated: Bool) {
     
    }
    
    func runCheckInet() {
        let networkReachabilityManager = NetworkReachabilityManager()
        if networkReachabilityManager!.isReachable {
            infoView.isHidden = false
        } else {
            infoView.isHidden = true
            let alert = UIAlertController(title: "No internet connection", message: "", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
             present(alert, animated: true, completion: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pairs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PositionTableViewCell", for: indexPath) as! PositionTableViewCell
        cell.pairLabel.text = pairs[indexPath.row]
        cell.updateUI()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 68
       }

    @IBAction func toSets(_ sender: Any) {
        let std = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let viewCo = std.instantiateViewController(withIdentifier: "SetsLearnViewController") as! SetsLearnViewController

        present(viewCo, animated: true)
    }
    
}


struct VALUECURR {
    var firstValue: String

}
