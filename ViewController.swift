//
//  ViewController.swift
//  KUNIWorkOut
//
//  Created by 石田凌三 on 2021/08/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func chestSend(_ sender: Any) {
        UserDefaults.standard.setValue("chest", forKey: "part")
    }
    
    @IBAction func coreSend(_ sender: Any) {
        UserDefaults.standard.setValue("core", forKey: "part")
    }
    
    @IBAction func armSend(_ sender: Any) {
        UserDefaults.standard.setValue("arm", forKey: "part")
    }
    
    @IBAction func legSend(_ sender: Any) {
        UserDefaults.standard.setValue("leg", forKey: "part")
    }
    
    

}

