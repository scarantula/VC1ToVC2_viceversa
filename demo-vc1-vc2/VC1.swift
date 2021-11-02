//
//  ViewController.swift
//  demo-vc1-vc2
//
//  Created by user205198 on 11/1/21.
//

import UIKit

class VC1: UIViewController, DataDelegate {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func getData(text: String) {
        dataLabel.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVC2"{
            let vc2 = segue.destination as! VC2
            vc2.delegate = self
        }
    }


}

