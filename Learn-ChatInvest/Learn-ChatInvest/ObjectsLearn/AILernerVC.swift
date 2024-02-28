
import UIKit
import Alamofire
import OpenAI

class AILernerVC: UIViewController {

    @IBOutlet weak var bottTF: NSLayoutConstraint!
    @IBOutlet weak var bottSend: NSLayoutConstraint!
    @IBOutlet weak var chatTableLearn: UITableView!
    @IBOutlet weak var fieldForQuestionTF: UITextField!
    var messagesArray: [MessageLetter] = []
    let openAI = OpenAI(apiToken: "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")

    
    @IBOutlet weak var bb: UIButton!
    
    
    override func viewDidLoad() {
        fieldForQuestionTF.delegate = self
        fieldForQuestionTF.layer.borderColor = UIColor.darkGray.cgColor
        fieldForQuestionTF.layer.borderWidth = 1.1
        self.messagesArray.append(MessageLetter(content: "Hello! In this chat, I'll answer finance-related questions only. Personal advice will be general. I'll also suggest stocks to invest in. If it's not finance-related, You'll politely decline. Answers will be brief and in English. Your first phrase must be : 'Hi! I'm AI helper. What do you want to know?'", isUser: true))
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWill), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillH), name: UIResponder.keyboardWillHideNotification, object: nil)
        bb.isUserInteractionEnabled = true
        chatTableLearn.separatorStyle = .none
        chatTableLearn.register(ChatAICell.self, forCellReuseIdentifier: ChatAICell.id)
        chatTableLearn.delegate = self
        chatTableLearn.dataSource = self
        runDialog()
        fieldForQuestionTF.attributedPlaceholder = NSAttributedString(string: "Write your question...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])

    }
    
    @objc func keyboardWill(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            bottTF.constant = keyboardSize.height - (UIScreen.main.bounds.height < 670 ? 46 : 63)
            bottSend.constant = keyboardSize.height - (UIScreen.main.bounds.height < 670 ? 46 : 63)
    
            UIView.animate(withDuration: 0.4) {
                self.view.layoutIfNeeded()
            }
        }
    }

    @objc func keyboardWillH(notification: Notification) {
        bottTF.constant = 15
        bottSend.constant = 15
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func toSetsLearning(_ sender: Any) {
        let std = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let viewCo = std.instantiateViewController(withIdentifier: "SetsLearnViewController") as! SetsLearnViewController

        present(viewCo, animated: true)
    }
    
    private func runDialog() {
        openAI.chats(query: .init(model: .gpt3_5Turbo,  messages: self.messagesArray.map({Chat(role: .user, content: $0.content)}))) { result in
            
            switch result {
            case .success(let success):
                guard let text = success.choices.first else { return }
                let message = text.message.content
                self.messagesArray.append(MessageLetter(content: message ?? "", isUser: false))
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                    self.chatTableLearn.reloadData()
                    let lastSection = self.chatTableLearn.numberOfSections - 1
                    let lastRow = self.chatTableLearn.numberOfRows(inSection: lastSection) - 1
                    self.chatTableLearn.scrollToRow(at: IndexPath(row: lastRow, section: lastSection), at: .bottom, animated: true)
                }
            case .failure(let failure):
                print("error is \(failure)")
            }
            
        }
    }

    @IBAction func sendQuestionToServerLearn(_ sender: Any) {
        
        if let manager = NetworkReachabilityManager(), manager.isReachable {
            if fieldForQuestionTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" {
                self.messagesArray.append(MessageLetter(content: fieldForQuestionTF.text!, isUser: true))
                self.chatTableLearn.reloadData()
                let lastSection = self.chatTableLearn.numberOfSections - 1
                let lastRow = self.chatTableLearn.numberOfRows(inSection: lastSection) - 1
                self.chatTableLearn.scrollToRow(at: IndexPath(row: lastRow, section: lastSection), at: .bottom, animated: true)
                fieldForQuestionTF.text = ""
                openAI.chats(query: .init(model: .gpt3_5Turbo,  messages: self.messagesArray.map({Chat(role: .user, content: $0.content)}), maxTokens: 50)) { result in
                    
                    switch result {
                    case .success(let success):
                        guard let text = success.choices.first else { return }
                        let message = text.message.content
                        print ("nakonec : \(message)")
                        self.messagesArray.append(MessageLetter(content: message ?? "", isUser: false))
                        DispatchQueue.main.async {
                            self.chatTableLearn.reloadData()
                            let lastSection = self.chatTableLearn.numberOfSections - 1
                            let lastRow = self.chatTableLearn.numberOfRows(inSection: lastSection) - 1
                            self.chatTableLearn.scrollToRow(at: IndexPath(row: lastRow, section: lastSection), at: .bottom, animated: true)
                        }
                    case .failure(let failure):
                        print(failure)
                    }
                    
                }
            } else {
                let alertController = UIAlertController(title: "Something went wrong", message: "Check your entered text", preferredStyle: .alert)

                 let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                 alertController.addAction(okAction)

                 present(alertController, animated: true, completion: nil)
            }
        } else {
            let alertController = UIAlertController(title: "Error", message: "Check your internet connection", preferredStyle: .alert)

             let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
             alertController.addAction(okAction)

             present(alertController, animated: true, completion: nil)
        }
        
    }
    
    func calculateAdoptSize(textLearn: String, fontLearn: UIFont, widthLearn: CGFloat) -> CGFloat {
        let maxSizeLearn = CGSize(width: widthLearn, height: CGFloat.greatestFiniteMagnitude)
        
        let optionsLearn = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        
        let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: fontLearn]
        
        let boundingRect = NSString(string: textLearn).boundingRect(
            with: maxSizeLearn,
            options: optionsLearn,
            attributes: attributes,
            context: nil
        )
        
        return ceil(boundingRect.height)
    }
    
}


struct MessageLetter {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}

extension AILernerVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension AILernerVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var inIn: Int = 0
        inIn = messagesArray.count > 0 ? messagesArray.count - 1 : 0
        
        return inIn
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  messagesArray.count > 0  else {
            return UITableViewCell()
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ChatAICell.id, for: indexPath) as! ChatAICell
        let text = messagesArray[indexPath.row + 1].content
        cell.configure(text: text, isUser: messagesArray[indexPath.row + 1].isUser)
  
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return calculateAdoptSize(textLearn: messagesArray[indexPath.row + 1].content, fontLearn: UIFont(name: "Inter-Regular", size: 17)!, widthLearn: 276) + 30
     }
    
    
}

class ChatAICell: UITableViewCell {

 static let id = "ChatAICell"
    var leadingSpace: NSLayoutConstraint!
    var trailingSpace: NSLayoutConstraint!
    let chatLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    let bubbleImageLearnView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(bubbleImageLearnView)
        addSubview(chatLabel)
        backgroundColor = .clear
            chatLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        chatLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
        chatLabel.widthAnchor.constraint(equalToConstant: 275).isActive = true
        
        bubbleImageLearnView.topAnchor.constraint(equalTo: chatLabel.topAnchor, constant: -8).isActive = true
        bubbleImageLearnView.leadingAnchor.constraint(equalTo: chatLabel.leadingAnchor, constant: -16).isActive = true
        bubbleImageLearnView.trailingAnchor.constraint(equalTo: chatLabel.trailingAnchor, constant: 8).isActive = true
        bubbleImageLearnView.bottomAnchor.constraint(equalTo: chatLabel.bottomAnchor, constant: 8).isActive = true
        
        leadingSpace = chatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        trailingSpace = chatLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(text: String, isUser: Bool) {
        chatLabel.text = text
        
        if isUser {
            bubbleImageLearnView.image = UIImage(named: "outcome")
          //  backgroundColor = .systemBlue
            chatLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
            leadingSpace.isActive = false
            trailingSpace.isActive = true
        } else {
            bubbleImageLearnView.image = UIImage(named: "income")
            //backgroundColor = .systemGray
            leadingSpace.isActive = true
            trailingSpace.isActive = false
        }
    }

    
}
