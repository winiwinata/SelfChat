//
//  ViewController.swift
//  SelfChat
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    @IBOutlet var sendMessage: UITextField!
    @IBOutlet var receiveMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        
        if segue.identifier == "change" {
            let des = segue.destination as! secondViewController
            des.passMessage = sendMessage.text!
        }
    }
    
    // for the screen to go back to user one after user 2 sent a message
    @IBAction func backTo(segue: UIStoryboardSegue) {
        let src = segue.source as! secondViewController
        receiveMessage.text = src.sendMessage.text
        dismiss(animated: true, completion: nil)
    }
}

