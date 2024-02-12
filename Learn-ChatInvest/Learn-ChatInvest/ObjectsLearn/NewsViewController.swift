

import UIKit
import Alamofire


class NewsViewController: UIViewController {

    @IBOutlet weak var tableForNewsLearning: UITableView!
    let apiKeyFin = "cmih9b9r01qrtmbpiu20cmih9b9r01qrtmbpiu2g"
    var resultNews: [NewsArticle] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableForNewsLearning.showsVerticalScrollIndicator = false
        tableForNewsLearning.dataSource = self
        tableForNewsLearning.delegate = self
        let nib = UINib(nibName: "NewsFeedCell", bundle: nil)
        tableForNewsLearning.register(nib, forCellReuseIdentifier: "NewsFeedCell")
        view.addSubview(tableForNewsLearning)

        let newsEndpoint = "https://finnhub.io/api/v1/news"

        let parameters: [String: Any] = [
            "category": "business",
            "token": apiKeyFin
        ]

        // Make the request using Alamofire
        AF.request(newsEndpoint, parameters: parameters).responseDecodable(of: [NewsArticle].self) { response in
            switch response.result {
            case .success(let finnhubNewsResponse):
                self.resultNews = finnhubNewsResponse
                self.tableForNewsLearning.reloadData()
              print(finnhubNewsResponse)
            case .failure(let error):
                print("Error fetching news: \(error)")
            }
        }

    }
    
    var newIndex: Int = 0

}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        resultNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsFeedCell", for: indexPath) as! NewsFeedCell
        cell.configure(with: resultNews[indexPath.row])
        cell.morNewsLearning.tag = indexPath.row
        cell.morNewsLearning.addTarget(self, action: #selector(onFullNew), for: .touchUpInside)
               return cell
    }
    
    @objc func onFullNew(_ sender: UIButton) {
        let stdLearn = UIStoryboard(name: "SingleArticleViewController", bundle: nil)
        let viewCoLearn = stdLearn.instantiateViewController(withIdentifier: "SingleArticleViewController") as! SingleArticleViewController
        viewCoLearn.directLearnNew = resultNews[sender.tag]
        viewCoLearn.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(viewCoLearn, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 295
       }
    
    
}


struct NewsArticle: Decodable {
    let category: String
    let datetime: TimeInterval
    let headline: String
    let id: Int
    let image: String
    let related: String
    let source: String
    let summary: String
    let url: String
}
