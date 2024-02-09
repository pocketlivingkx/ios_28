
import UIKit

class CustomBarLearnViewController: UIViewController {

    @IBOutlet weak var barbar: UIView!
    
    @IBOutlet weak var tab1Learn: TabViewTrade!
    @IBOutlet weak var tab2Helper: TabViewTrade!
    @IBOutlet weak var tab3News: TabViewTrade!
    @IBOutlet weak var tab4Settings: TabViewTrade!
    @IBOutlet weak var contentView: UIView!
    var bars: [TabViewTrade] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bars = [tab1Learn, tab2Helper, tab3News, tab4Settings]
        barbar.clipsToBounds = true
        tab1Learn.levelImView.image = UIImage(named: "Hat")?.withRenderingMode(.alwaysTemplate)
        tab1Learn.levelLabelV.text = "Learn"
        
        tab2Helper.levelImView.image = UIImage(named: "Ask")?.withRenderingMode(.alwaysTemplate)
        tab2Helper.levelImView.tintColor = .white
        tab2Helper.levelLabelV.text = "Helper"
        
        tab3News.levelImView.image = UIImage(named: "Speaker")?.withRenderingMode(.alwaysTemplate)
        tab3News.levelLabelV.text = "News"
        
        tab4Settings.levelImView.image = UIImage(named: "Customization")?.withRenderingMode(.alwaysTemplate)
        tab4Settings.levelLabelV.text = "Settings"
        
        tab1Learn.barAction.addTarget(self, action: #selector(on1), for: .touchUpInside)
        
        tab2Helper.barAction.addTarget(self, action: #selector(on2), for: .touchUpInside)
        
        tab3News.barAction.addTarget(self, action: #selector(on3), for: .touchUpInside)
        
        tab4Settings.barAction.addTarget(self, action: #selector(on4), for: .touchUpInside)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.on1()
        }
    }
    
    @objc func on1() {
        print("on1")
        bars.forEach { $0.levelImView.tintColor = .white}
        guard let ai = self.storyboard?.instantiateViewController(withIdentifier: "LearnerViewController") as? LearnerViewController else { return }
        if let foundView = contentView.viewWithTag(1) {
            print("Found view with tag: \(1)")
            contentView.bringSubviewToFront(foundView)
            tab1Learn.levelImView.tintColor = .tintColor
            tab1Learn.levelLabelV.tintColor = .tintColor
        } else {
            contentView.addSubview(ai.view)
            contentView.bringSubviewToFront(ai.view)
            tab1Learn.levelImView.tintColor = .tintColor
            tab1Learn.levelLabelV.tintColor = .tintColor
            print("View with tag \(1) not found.")
        }
        ai.view.tag = 1
        ai.didMove(toParent: self)    }
    
    @objc func on2() {
        print("on2")
        bars.forEach { $0.levelImView.tintColor = .white}

        guard let ai = self.storyboard?.instantiateViewController(withIdentifier: "AILernerVC") as? AILernerVC else { return }
        if let foundView = contentView.viewWithTag(2) {
            print("Found view with tag: \(2)")
            contentView.bringSubviewToFront(foundView)
            tab2Helper.levelImView.tintColor = .tintColor
            tab2Helper.levelLabelV.tintColor = .tintColor
        } else {
            contentView.addSubview(ai.view)
            tab2Helper.levelImView.tintColor = .tintColor
            tab2Helper.levelLabelV.tintColor = .tintColor
            contentView.bringSubviewToFront(ai.view)

            print("View with tag \(2) not found.")
        }
        ai.view.tag = 2
        ai.didMove(toParent: self)


    }
    
    @objc func on3() {
        print("on3")
        bars.forEach { $0.levelImView.tintColor = .white}

        guard let ai = self.storyboard?.instantiateViewController(withIdentifier: "NewsViewController") as? NewsViewController else { return }
        if let foundView = contentView.viewWithTag(3) {
            print("Found view with tag: \(3)")
            contentView.bringSubviewToFront(foundView)
            tab3News.levelImView.tintColor = .tintColor
            tab3News.levelLabelV.tintColor = .tintColor
        } else {
            contentView.addSubview(ai.view)
            tab3News.levelImView.tintColor = .tintColor
            tab3News.levelLabelV.tintColor = .tintColor
            contentView.bringSubviewToFront(ai.view)

            print("View with tag \(3) not found.")
        }
        ai.view.tag = 3
        ai.didMove(toParent: self)

    }
    
    @objc func on4() {
        print("on4")
        bars.forEach { $0.levelImView.tintColor = .white}

        guard let ai = self.storyboard?.instantiateViewController(withIdentifier: "SetsLearnViewController") as? SetsLearnViewController else { return }
        if let foundView = contentView.viewWithTag(4) {
            print("Found view with tag: \(4)")
            contentView.bringSubviewToFront(foundView)
            tab4Settings.levelImView.tintColor = .tintColor
            tab4Settings.levelLabelV.tintColor = .tintColor
        } else {
            contentView.addSubview(ai.view)
            tab4Settings.levelImView.tintColor = .tintColor
            tab4Settings.levelLabelV.tintColor = .tintColor
            contentView.bringSubviewToFront(ai.view)

            print("View with tag \(4) not found.")
        }
        ai.view.tag = 4
        ai.didMove(toParent: self)
    }
    
    
    
    
    
    
    

}
