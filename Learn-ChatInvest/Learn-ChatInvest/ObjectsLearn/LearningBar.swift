

import UIKit
class LearningBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let customTabBar = RoundedTabBar()
         
         // Set the custom tab bar as the tab bar for the tab bar controller
         self.setValue(customTabBar, forKey: "tabBar")
        let st1Learning = UIStoryboard(name: "LearnerViewController", bundle: nil)
        let vc1Learning = st1Learning.instantiateViewController(withIdentifier: "LearnerViewController")
        let st2Learning = UIStoryboard(name: "AILernerVC", bundle: nil)
        let vc2Learning = st2Learning.instantiateViewController(withIdentifier: "AILernerVC")
        let st3Learning = UIStoryboard(name: "NewsViewController", bundle: nil)
        let vc3Learning = st3Learning.instantiateViewController(withIdentifier: "NewsViewController")
        let st4Learning = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let vc4Learning = st4Learning.instantiateViewController(withIdentifier: "SetsLearnViewController")
        let st5Learning = UIStoryboard(name: "ExamsViewController", bundle: nil)
        let vc5Learning = st5Learning.instantiateViewController(withIdentifier: "ExamsViewController")
        
        let nav1Learning = UINavigationController(rootViewController: vc1Learning)
        let nav2Learning = UINavigationController(rootViewController: vc2Learning)
        let nav3Learning = UINavigationController(rootViewController: vc3Learning)
        let nav4Learning = UINavigationController(rootViewController: vc4Learning)
        let nav5Learning = UINavigationController(rootViewController: vc5Learning)
        
        nav1Learning.tabBarItem.image = UIImage(named: "Hat")
        nav2Learning.tabBarItem.image = UIImage(named: "Ask")
        nav3Learning.tabBarItem.image = UIImage(named: "Speaker")
        nav4Learning.tabBarItem.image = UIImage(named: "Customization")
        nav5Learning.tabBarItem.image = UIImage.init(systemName: "list.bullet.clipboard")
        
        
        nav1Learning.tabBarItem.title = "Learn"
        nav2Learning.tabBarItem.title = "Helper"
        nav3Learning.tabBarItem.title = "News"
        nav4Learning.tabBarItem.title = "Settings"
        nav5Learning.tabBarItem.title = "Exam"

        
        let navsLearning = [nav1Learning, nav5Learning, nav2Learning, nav3Learning, nav4Learning ]
        UITabBar.appearance().tintColor = UIColor.white
        navsLearning.forEach { $0.navigationBar.isHidden = true }
        
        viewControllers = navsLearning
        UITabBar.appearance().backgroundColor = UIColor(red: 0.9176, green: 0.9176, blue: 0.9176, alpha: 1.0)
        UITabBar.appearance().barTintColor = UIColor(red: 0.9176, green: 0.9176, blue: 0.9176, alpha: 1.0)
        UITabBar.appearance().tintColor = UIColor.tintColor
    }
    
}

class RoundedTabBar: UITabBar {
    
    private var shapeLayer: CALayer?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        shapeLayer?.removeFromSuperlayer()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.fillColor = UIColor.black.cgColor
        layer.insertSublayer(shapeLayer, at: 0)
        self.shapeLayer = shapeLayer
    }
    
    private func createPath() -> CGPath {
        let path = UIBezierPath(roundedRect: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.width - 20, height: 60), byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: 20.0, height: 20.0))
        return path.cgPath
    }
}
