//
//  WebKitViewController.swift
//  KUNIWorkOut
//
//  Created by 石田凌三 on 2021/08/19.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController {
    
    
    @IBOutlet weak var web: WKWebView!
    
    var part = UserDefaults.standard.string(forKey: "part")
    var strength = UserDefaults.standard.string(forKey: "strength")
    
    var youtube = [
        "chest":[
            "hard":"https://www.youtube.com/watch?v=iQB5Bpr4gb4&t=104s",
            "medium":"https://www.youtube.com/watch?v=VzUaVBXGVeQ",
            "easy":"https://www.youtube.com/watch?v=H8X1NQd_a_Y&t=28s"
        ],
        "arm":[
            "hard":"https://www.youtube.com/watch?v=kbmj-28AQgc&t=20s",
            "medium":"https://www.youtube.com/watch?v=bDSjv4JJRhM&t=15s",
            "easy":"https://www.youtube.com/watch?v=77MTzc1bMGM&t=112s"
        ],
        "core":[
            "hard":"https://www.youtube.com/watch?v=X-VNbtRJ_Vk&t=17s",
            "medium":"https://www.youtube.com/watch?v=5FcWbjm6c-g&t=340s",
            "easy":"https://www.youtube.com/watch?v=Ei7YgRgeGyQ&t=92"
        ],
        "leg":[
            "hard":"https://www.youtube.com/watch?v=zcRnFaOu8pk&t=130s",
            "medium":"https://www.youtube.com/watch?v=bN42WxQTtVQ&t=90",
            "easy":"https://www.youtube.com/watch?v=M502KGitq7c&t=58"
        ]
    ] as [String : [String:String]]
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        if (part != "" && strength != ""){
            let url = URL(string: youtube[part!]![strength!]!)
            let request = URLRequest(url:url!)
            web.load(request)
        } else {
            let url = URL(string: "https://www.youtube.com/watch?v=KnB9gipG2Mc")
            let request = URLRequest(url:url!)
            web.load(request)
        }
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
