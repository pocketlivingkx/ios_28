
import UIKit

class TabViewTrade: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var levelImView: UIImageView!
    @IBOutlet weak var levelLabelV: UILabel!
    @IBOutlet weak var barAction: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupContentView()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
        setupContentView()
      }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupContentView() {
            Bundle.main.loadNibNamed(String(describing: TabViewTrade.self), owner: self, options: nil)
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

        }

}
