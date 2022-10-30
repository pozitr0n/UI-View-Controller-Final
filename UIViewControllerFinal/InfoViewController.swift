//
//  InfoViewController.swift
//  UIViewControllerFinal
//
//  Created by Raman Kozar on 30/10/2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var FIO: UILabel!
    @IBOutlet weak var Age: UILabel!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var EMail: UILabel!
    
    var _FIO: String = ""
    var _Age: String = ""
    var _City: String = ""
    var _EMail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIO.text = _FIO
        Age.text = _Age
        City.text = _City
        EMail.text = _EMail
        
    }

}
