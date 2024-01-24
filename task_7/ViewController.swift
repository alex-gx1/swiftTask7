import UIKit

protocol VCDelegate {
    func setName(name: String)
}

class ViewController: UIViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    @IBOutlet private weak var costumizeButton: UIButton! {
        didSet {
            costumizeButton.layer.cornerRadius = costumizeButton.bounds.height / 2
            costumizeButton.layer.borderWidth = 3.0
            costumizeButton.layer.borderColor = (UIColor(red: 242.0/255.0, green: 116.0/255.0, blue: 119.0/255.0, alpha: 1.0)).cgColor
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func pushDidTrapCustomize() {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = mainStoryBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        secondVC.delegate = self
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

extension ViewController: VCDelegate{
    func setName(name: String) {
        self.nameLabel.text = name
    }
}

