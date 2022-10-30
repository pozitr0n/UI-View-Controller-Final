//
//  ViewController.swift
//  UIViewControllerFinal
//
//  Created by Raman Kozar on 30/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFIO: UITextField!
    @IBOutlet weak var myAge: UITextField!
    @IBOutlet weak var myCity: UITextField!
    @IBOutlet weak var myEMail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        view.addGestureRecognizer(tap)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "mySegue" else { return }
        guard let destination = segue.destination as? InfoViewController else { return }
        
        destination._FIO = myFIO.text ?? ""
        destination._Age = myAge.text ?? ""
        destination._City = myCity.text ?? ""
        destination._EMail = myEMail.text ?? ""
        
    }
    
    @objc func dissmissKeyboard() {
        view.endEditing(true)
    }

}

