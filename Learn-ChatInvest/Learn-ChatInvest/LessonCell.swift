

import UIKit

class LessonCell: UITableViewCell {

    @IBOutlet weak var levelLearnLabel: UILabel!
    @IBOutlet weak var logoImageLearn: UIImageView!
    @IBOutlet weak var colorBackLearn: UIView!
    @IBOutlet weak var nameLearnLabel: UILabel!
    @IBOutlet weak var countLearnsLessons: UILabel!
    @IBOutlet weak var toLearnTopicButton: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        levelLearnLabel.layer.cornerRadius = 8
        levelLearnLabel.clipsToBounds = true
        levelLearnLabel.backgroundColor = .gray.withAlphaComponent(0.5)
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
