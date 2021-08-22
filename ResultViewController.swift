//
//  ResultViewController.swift
//  KUNIWorkOut
//
//  Created by 石田凌三 on 2021/08/19.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var partLabel: UILabel!
    
    let partList = [
        "chest":"メロン胸筋",
        "core":"バッキバキの腹筋",
        "arm":"ごっつぃ腕",
        "leg":"丸太のような脚"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let part = UserDefaults.standard.string(forKey: "part")
        partLabel.text = partList[part!]
    }
    
    @IBAction func returnHome(_ sender: Any) {
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! ViewController
        self.navigationController?.pushViewController(nextView, animated: true)
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
