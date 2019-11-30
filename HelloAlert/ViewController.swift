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
                   preferredStyle: .actionSheet)
        
        
               
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                   print("OK clicked")
                    }
        alertController.addAction(okAction)
        
       let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
           print("Cancel clicked")
       }
       alertController.addAction(cancelAction)
        
               
        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func action2(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyboard.instantiateViewController(identifier: "myNewVCID")
//        nextVC.modalPresentationStyle = .overCurrentContext
        nextVC.modalPresentationStyle = .fullScreen
        
        present(nextVC, animated: true, completion: nil)
    }
   
}

