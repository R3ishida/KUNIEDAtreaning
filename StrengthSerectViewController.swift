//
//  StrengthSerectViewController.swift
//  KUNIWorkOut
//
//  Created by 石田凌三 on 2021/08/19.
//

import UIKit

class StrengthSerectViewController: UIViewController {
    
    var part = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hardSend(_ sender: Any) {
        UserDefaults.standard.setValue("hard", forKey: "strength")
    }
    
    @IBAction func mediumSend(_ sender: Any) {
        UserDefaults.standard.setValue("medium", forKey: "strength")
    }
    
    @IBAction func easySend(_ sender: Any) {
        UserDefaults.standard.setValue("easy", forKey: "strength")
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
