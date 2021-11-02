//
//  VC2.swift
//  demo-vc1-vc2
//
//  Created by user205198 on 11/1/21.
//

import UIKit

protocol DataDelegate{
    func getData(text: String)
}


class VC2: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var delegate: DataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func sendDataPressed(_ sender: UIButton) {
        if self.delegate != nil{
            if let data = textField.text{
                self.delegate?.getData(text: data)
                
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
}
