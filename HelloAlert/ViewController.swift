//
//  ViewController.swift
//  HelloAlert
//
//  Created by MBP_JackYang on 2019/11/30.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 @IBOutlet weak var action: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        
         let alertController = UIAlertController(
                   title: "請注意",
                   message: "看我這兒好嗎？",
                   preferredStyle: .alert)
               
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                   print("OK clicked")
                    }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Cancel clicked")
        }

        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
               
        present(alertController, animated: true, completion: nil)
    }
    
   
}

