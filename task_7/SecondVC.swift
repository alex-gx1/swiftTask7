import Foundation
import UIKit

class SecondVC: UIViewController {
    
    var delegate: VCDelegate!
    
    @IBOutlet private weak var textField: UITextField!
    
    @IBOutlet private weak var buttonConfirm: UIButton! {
        didSet {
            buttonConfirm.layer.cornerRadius = buttonConfirm.bounds.height / 2
            buttonConfirm.layer.borderWidth = 3.0
            buttonConfirm.layer.borderColor = (UIColor(red: 242.0/255.0, green: 116.0/255.0, blue: 119.0/255.0, alpha: 1.0)).cgColor
        }
    }
    
    @IBAction func saveText(_ sender: Any) {
        delegate?.setName(name: textField.text ?? "")
        navigationController?.popToRootViewController(animated: true)
    }
    
}
