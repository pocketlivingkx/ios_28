
import UIKit

class LessonWithTimeLessonCell: UITableViewCell {

    @IBOutlet weak var nameLessonLearn: UILabel!
    @IBOutlet weak var timeLessonLabel: UILabel!
    @IBOutlet weak var showFullVersionLessonLearn: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
}
