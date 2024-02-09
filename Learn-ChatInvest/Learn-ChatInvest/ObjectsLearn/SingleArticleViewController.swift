
import UIKit

class SingleArticleViewController: UIViewController {

    var directLearnNew: NewsArticle!
    @IBOutlet weak var freshesLabel: UILabel!
    @IBOutlet weak var titleNewLabel: UILabel!
    @IBOutlet weak var mainImageOfNews: UIImageView!
    @IBOutlet weak var readmoreButton: UIButton!
    
    @IBOutlet weak var mainTextPfArticleTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true
        freshesLabel.layer.cornerRadius = 8
        freshesLabel.clipsToBounds = true
        readmoreButton.layer.cornerRadius = 12
        readmoreButton.clipsToBounds = true
        let date = Date(timeIntervalSince1970: directLearnNew.datetime)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let formattedDate = dateFormatter.string(from: date)

        freshesLabel.text = formattedDate
        titleNewLabel.text = directLearnNew.headline
        mainTextPfArticleTV.text = "Source: \(directLearnNew.source)\n" + directLearnNew.summary
        
        if let imageURL = URL(string: directLearnNew.image) {
            mainImageOfNews.kf.setImage(with: imageURL) { [weak self] result in
                switch result {
                case .success(_):
                    break
                case .failure(let error):
                    print("Error  image: \(error.localizedDescription)")
                }
            }
        }

    }
    
    @IBAction func goToNewsList(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToSourceNew(_ sender: Any) {
        if let url = URL(string: directLearnNew.url) {
                 UIApplication.shared.open(url)
             }
    }
    
}
