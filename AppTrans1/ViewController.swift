//
//  ViewController.swift
//  AppTrans1
//
//  Created by GMC on 7/28/20.
//  Copyright © 2020 GMC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTest: UITextField!
    var testLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
    }
    

    @IBAction func handleSave(_ sender: Any) {
        let userDefaults = UserDefaults(suiteName: "group.com.phucnd.ssc")
        userDefaults!.set(txtTest.text, forKey: "userId")
        userDefaults!.synchronize()
        
    }
    @IBAction func openReceiverApp(_ sender: Any) {
        
        let txt = txtTest.text ?? "readtext://Nodata"
    
        
        
        let ourURL = URL(string: txt)
        if UIApplication.shared.canOpenURL(ourURL!){
            UIApplication.shared.open(ourURL!, options: [:], completionHandler: nil)
        }
        
    }
    
    
}

