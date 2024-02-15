
import UIKit
import Alamofire

class ConverterLearningViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    
    @IBOutlet weak var fromAmountV: UITextField!
    @IBOutlet weak var fromAmountBut: UIButton!
    @IBOutlet weak var fromDescrLabel: UILabel!
    
    @IBOutlet weak var toAmountV: UITextField!
    @IBOutlet weak var toAmountBut: UIButton!
    @IBOutlet weak var toAmountDescrLabel: UILabel!
    var c1Sum = 0
    var currentAm = 0
    var curr1 = "" {
        didSet {
            fromAmountBut.setTitle(curr1, for: .normal)
        }
    }
    var curr2 = "" {
        didSet {
            toAmountBut.setTitle(curr2, for: .normal)

        }
    }
    var curr1Descr = "" {
        didSet {
            fromDescrLabel.text = curr1Descr
        }
    }
    var curr2Descr = "" {
        didSet {
            toAmountDescrLabel.text = curr2Descr

        }
    }
    
    var currencies: [String] = []

    @IBOutlet weak var currencyPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromAmountV.delegate = self
        fromAmountV.isEnabled = true
        currencies = Array(allCurrenciesLearning.keys)
        currencyPicker.isHidden = true
        currencyPicker.delegate = self
        currencyPicker.dataSource = self
        currencyPicker.backgroundColor = UIColor.darkGray

        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return allCurrenciesLearning.count
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return currencies[row]
       }
       
       // MARK: - Button Action
       
       @IBAction func selectCurrencyButtonTapped(_ sender: UIButton) {
           currencyPicker.isHidden = false
       }
    
    let allCurrenciesLearning = [
      "AED": "United Arab Emirates dirham",
      "AFN": "Afghan afghani",
      "ALL": "Albanian lek",
      "AMD": "Armenian dram",
      "ANG": "Netherlands Antillean guilder",
      "AOA": "Angolan kwanza",
      "ARS": "Argentine peso",
      "AUD": "Australian dollar",
      "AWG": "Aruban florin",
      "AZN": "Azerbaijani manat",
      "BAM": "Bosnia and Herzegovina convertible mark",
      "BBD": "Barbadian dollar",
      "BDT": "Bangladeshi taka",
      "BGN": "Bulgarian lev",
      "BHD": "Bahraini dinar",
      "BIF": "Burundian franc",
      "BMD": "Bermudian dollar",
      "BND": "Brunei dollar",
      "BOB": "Bolivian boliviano",
      "BRL": "Brazilian real",
      "BSD": "Bahamian dollar",
      "BTN": "Bhutanese ngultrum",
      "BWP": "Botswana pula",
      "BYN": "Belarusian ruble",
      "BZD": "Belize dollar",
      "CAD": "Canadian dollar",
      "CDF": "Congolese franc",
      "CHF": "Swiss franc",
      "CLP": "Chilean peso",
      "CNY": "Renminbi",
      "COP": "Colombian peso",
      "CRC": "Costa Rican colón",
      "CUC": "Cuban convertible peso",
      "CUP": "Cuban peso",
      "CVE": "Cape Verdean escudo",
      "CZK": "Czech koruna",
      "DJF": "Djiboutian franc",
      "DKK": "Danish krone",
      "DOP": "Dominican peso",
      "DZD": "Algerian dinar",
      "EGP": "Egyptian pound",
      "ERN": "Eritrean nakfa",
      "ETB": "Ethiopian birr",
      "EUR": "Euro",
      "FJD": "Fijian dollar",
      "FKP": "Falkland Islands pound",
      "GBP": "Pound sterling",
      "GEL": "Georgian lari",
      "GGP": "Guernsey pound",
      "GHS": "Ghanaian cedi",
      "GIP": "Gibraltar pound",
      "GMD": "Gambian dalasi",
      "GNF": "Guinean franc",
      "GTQ": "Guatemalan quetzal",
      "GYD": "Guyanese dollar",
      "HKD": "Hong Kong dollar",
      "HNL": "Honduran lempira",
      "HRK": "Croatian kuna",
      "HTG": "Haitian gourde",
      "HUF": "Hungarian forint",
      "IDR": "Indonesian rupiah",
      "ILS": "Israeli new shekel",
      "IMP": "Manx pound",
      "INR": "Indian rupee",
      "IQD": "Iraqi dinar",
      "IRR": "Iranian rial",
      "ISK": "Icelandic króna",
      "JEP": "Jersey pound",
      "JMD": "Jamaican dollar",
      "JOD": "Jordanian dinar",
      "JPY": "Japanese yen",
      "KES": "Kenyan shilling",
      "KGS": "Kyrgyzstani som",
      "KHR": "Cambodian riel",
      "KMF": "Comorian franc",
      "KRW": "South Korean won",
      "KWD": "Kuwaiti dinar",
      "KYD": "Cayman Islands dollar",
      "KZT": "Kazakhstani tenge",
      "LAK": "Lao kip",
      "LBP": "Lebanese pound",
      "LKR": "Sri Lankan rupee",
      "LRD": "Liberian dollar",
      "LSL": "Lesotho loti",
      "LYD": "Libyan dinar",
      "MAD": "Moroccan dirham",
      "MDL": "Moldovan leu",
      "MGA": "Malagasy ariary",
      "MKD": "Macedonian denar",
      "MMK": "Burmese kyat",
      "MNT": "Mongolian tögrög",
      "MOP": "Macanese pataca",
      "MRU": "Mauritanian ouguiya",
      "MUR": "Mauritian rupee",
      "MVR": "Maldivian rufiyaa",
      "MWK": "Malawian kwacha",
      "MXN": "Mexican peso",
      "MYR": "Malaysian ringgit",
      "MZN": "Mozambican metical",
      "NAD": "Namibian dollar",
      "NGN": "Nigerian naira",
      "NIO": "Nicaraguan córdoba",
      "NOK": "Norwegian krone",
      "NPR": "Nepalese rupee",
      "NZD": "New Zealand dollar",
      "OMR": "Omani rial",
      "PAB": "Panamanian balboa",
      "PEN": "Peruvian sol",
      "PGK": "Papua New Guinean kina",
      "PHP": "Philippine peso",
      "PKR": "Pakistani rupee",
      "PLN": "Polish złoty",
      "PYG": "Paraguayan guaraní",
      "QAR": "Qatari riyal",
      "RON": "Romanian leu",
      "RSD": "Serbian dinar",
      "RUB": "Russian ruble",
      "RWF": "Rwandan franc",
      "SAR": "Saudi riyal",
      "SBD": "Solomon Islands dollar",
      "SCR": "Seychellois rupee",
      "SDG": "Sudanese pound",
      "SEK": "Swedish krona",
      "SGD": "Singapore dollar",
      "SHP": "Saint Helena pound",
      "SLL": "Sierra Leonean leone",
      "SOS": "Somali shilling",
      "SRD": "Surinamese dollar",
      "SSP": "South Sudanese pound",
      "STN": "São Tomé and Príncipe dobra",
      "SVC": "Salvadoran colón",
      "SYP": "Syrian pound",
      "SZL": "Swazi lilangeni",
      "THB": "Thai baht",
      "TJS": "Tajikistani somoni",
      "TMT": "Turkmenistan manat",
      "TND": "Tunisian dinar",
      "TOP": "Tongan paʻanga",
      "TRY": "Turkish lira",
      "TTD": "Trinidad and Tobago dollar",
      "TWD": "New Taiwan dollar",
      "TZS": "Tanzanian shilling",
      "UAH": "Ukrainian hryvnia",
      "UGX": "Ugandan shilling",
      "USD": "United States dollar",
      "USDC": "USD Coin",
      "USDT": "Tether",
      "UYU": "Uruguayan peso",
      "UZS": "Uzbekistani soʻm",
      "VES": "Venezuelan bolívar",
      "VND": "Vietnamese đồng",
      "VUV": "Vanuatu vatu",
      "WST": "Samoan tālā",
      "XAF": "Central African CFA franc",
      "XCD": "Eastern Caribbean dollar",
      "XDR": "Special drawing rights",
      "XOF": "West African CFA franc",
      "XPF": "CFP franc",
      "XWL": "WorldLuxuryCoin",
      "XZR": "RialTO",
      "YER": "Yemeni rial",
      "ZAR": "South African rand",
      "ZMW": "Zambian kwacha",
      "ZWL": "Zimbabwean dollar"
    ]
    
    
 
    @IBAction func toSetsLearning(_ sender: Any) {
        let std = UIStoryboard(name: "SetsLearnViewController", bundle: nil)
        let viewCo = std.instantiateViewController(withIdentifier: "SetsLearnViewController") as! SetsLearnViewController

        present(viewCo, animated: true)
    }
    
    @IBAction func onS1(_ sender: Any) {
        currentAm = 0
        view.endEditing(true)
        currencyPicker.isHidden = false
    }
    
    @IBAction func onS2(_ sender: Any) {
        currentAm = 1
        view.endEditing(true)

        currencyPicker.isHidden = false

        
    }
    var timer: Timer?
    
    @objc func hidePicker() {
         currencyPicker.isHidden = true
         timer?.invalidate()
     }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        timer?.invalidate()

        timer = Timer.scheduledTimer(timeInterval: 1.2, target: self, selector: #selector(hidePicker), userInfo: nil, repeats: false)

           let selectedCurrency = currencies[row]
           let currencyFullName = allCurrenciesLearning[selectedCurrency]
           
           print("Selected Currency: \(selectedCurrency)")
           print("Full Name: \(currencyFullName ?? "Unknown")")
           
        if currentAm == 0 {
            curr1 = selectedCurrency
            curr1Descr = currencyFullName!
        } else {
            curr2 = selectedCurrency
            curr2Descr = currencyFullName!
        }
       }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    
    @IBAction func onXchangeLogicButton(_ sender: Any) {
        guard fromAmountV.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            let al = UIAlertController(title: "", message: "Enter amount for Currency 1", preferredStyle: .alert)

            let okActions = UIAlertAction(title: "ok", style: .default) { (action:UIAlertAction!) in
            }
            al.addAction(okActions)
            self.present(al, animated: true, completion: nil)
            return
        }
        
        guard curr1 != "" && curr2 != "" else {
            let al = UIAlertController(title: "", message: "Select From and To Currency", preferredStyle: .alert)

            let okActions = UIAlertAction(title: "ok", style: .default) { (action:UIAlertAction!) in
            }
            al.addAction(okActions)
            self.present(al, animated: true, completion: nil)
            return
        }
        
        guard let manager = Alamofire.NetworkReachabilityManager(), manager.isReachable  else {
            let al = UIAlertController(title: "", message: "Ensure a stable internet connection.", preferredStyle: .alert)

            let okActions = UIAlertAction(title: "ok", style: .default) { (action:UIAlertAction!) in
            }
            al.addAction(okActions)
            self.present(al, animated: true, completion: nil)
            return
        }
        
       
        
        if let sumX = Int(fromAmountV.text!) {
            let parameters: [String: Any] = [
                "api_key": "f8aa8d4b677e3ae6b69eb74559ecf977c9c96eb2",
                "from": curr1,
                "to": curr2,
                "amount": sumX ,
                "format": "json"
            ]
            
            AF.request("https://api.getgeoapi.com/v2/currency/convert", parameters: parameters)
                .validate()
                .responseDecodable(of: GettingValue.self) { response in
                    switch response.result {
                    case .success(let response):
                        self.toAmountV.text = response.rates.values.first!.rate_for_amount
                    case .failure(let errorX):
                        print(errorX)
                        
                    }
                }
        } else {
            let al = UIAlertController(title: "", message: "Incorrect input data.", preferredStyle: .alert)

            let okActions = UIAlertAction(title: "ok", style: .default) { (action:UIAlertAction!) in
            }
            al.addAction(okActions)
            self.present(al, animated: true, completion: nil)
        }
        
        
    }
    
    
}

struct GettingValue: Codable {
    let rates: [String: CurrencyWalletLear]
}

struct CurrencyWalletLear: Codable {
    let rate_for_amount: String
}
