

import UIKit
import Kingfisher

class NewsFeedCell: UITableViewCell {

    @IBOutlet weak var dateLabelLearning: UILabel!
    @IBOutlet weak var imageLabelLearning: UIImageView!
    @IBOutlet weak var hotNameLearning: UILabel!
    @IBOutlet weak var morNewsLearning: UIButton!
    
    @IBOutlet weak var podlView: UIView!
    var activityIndicator: UIActivityIndicatorView!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        contentView.backgroundColor = .clear
        dateLabelLearning.layer.cornerRadius = 8
        dateLabelLearning.clipsToBounds = true
        podlView.layer.cornerRadius = 12
        podlView.clipsToBounds = true
        dateLabelLearning.text = "Loading..."
        hotNameLearning.text = "Loading..."
        activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.hidesWhenStopped = true
        self.selectionStyle = .none
    }
    
    
    func configure(with news: NewsArticle) {
        hotNameLearning?.text = news.headline
        activityIndicator.startAnimating()
        
        let date = Date(timeIntervalSince1970: news.datetime)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let formattedDate = dateFormatter.string(from: date)

    dateLabelLearning.text = formattedDate


             if let imageURL = URL(string: news.image) {
                 imageLabelLearning.kf.setImage(with: imageURL) { [weak self] result in
                     guard let self = self else { return }
                     self.activityIndicator.stopAnimating()
                     switch result {
                     case .success(_):
                         break
                     case .failure(let error):
                         print("Error  image: \(error.localizedDescription)")
                     }
                 }
             }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
        // Configure the view for the selected state
    
}
