

import UIKit

class PositionTableViewCell: UITableViewCell {
    var timer: Timer?
    @IBOutlet weak var pairLabel: UILabel!
    @IBOutlet weak var wtfLabel: UILabel!
    @IBOutlet weak var goLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    var states = ["sell 0.10", "buy 1.00"]
    var colors = [UIColor(red: 1, green: 0.4275, blue: 0.4275, alpha: 1.0), UIColor(red: 0.1255, green: 0.7882, blue: 1, alpha: 1.0)]
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        startTimer()

    }
    
    func startTimer() {
  
           timer?.invalidate()

           timer = Timer.scheduledTimer(timeInterval: 30.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
       }
       
       @objc func updateUI() {
           var state = states.randomElement()
           
           if state == "sell 0.10" {
               wtfLabel.text = state
               wtfLabel.textColor = colors[0]
               diffLabel.textColor = colors[0]
               wtfLabel.backgroundColor = colors[0].withAlphaComponent(0.5)
               diffLabel.backgroundColor = colors[0].withAlphaComponent(0.5)
               diffLabel.text = "-\(String(format: "%.5f", Double.random(in: 0.01...1.10)))"
               var val1 = Double.random(in: 0.99001...1.10001)
               var val2 = Double.random(in: 0.99001...val1)
               goLabel.text = "\(String(format: "%.5f", val1)) → \(String(format: "%.5f", val2))"

           } else {
               wtfLabel.text = state
               wtfLabel.textColor = colors[1]
               diffLabel.textColor = colors[1]
               wtfLabel.backgroundColor = colors[1].withAlphaComponent(0.5)
               diffLabel.backgroundColor = colors[1].withAlphaComponent(0.5)
               diffLabel.text = "\(String(format: "%.5f", Double.random(in: 0.01...1.10)))"
               var val1 = Double.random(in: 0.99001...1.10001)
               var val2 = Double.random(in: val1...1.10001)
               goLabel.text = "\(String(format: "%.5f", val1)) → \(String(format: "%.5f", val2))"
           }
           
           DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
               UIView.animate(withDuration: 2.0, delay: 2, options: .curveEaseInOut, animations: {
                   // Устанавливаем альфа-канал фона 0
                   self.wtfLabel.backgroundColor = .clear
                   self.diffLabel.backgroundColor = .clear
               }, completion: nil)
           }
           
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "yyyy.MM.dd HH:mm:ss"

           let date = Date()

           let formattedDate = dateFormatter.string(from: date)
           dateLabel.text = "\(formattedDate)"
       }
       
       override func prepareForReuse() {
           super.prepareForReuse()
       
           timer?.invalidate()
       }
       
       deinit {
           timer?.invalidate()
       }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
