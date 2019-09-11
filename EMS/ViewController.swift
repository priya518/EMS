//
//  ViewController.swift
//  EMS
//
//  Created by COE-027 on 06/09/19.
//  Copyright © 2019 COE-027. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtemail: Bottomline!
    @IBOutlet weak var txtpassword: Bottomline!
    
   
    

    @IBOutlet weak var lbltext: UILabel!
    
    
    @IBAction func btnsignin(_ sender: Any) {
        lbltext.text = "Successfully login"
        
        if (txtemail.text == "abc@gmail.com"),(txtpassword.text == "fairy") {
            let alertview = UIAlertController(title: "Correct Email Id", message: "Log In", preferredStyle: .alert)
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            }))
            
            self.present(alertview, animated: true, completion: nil)
        }
        
        else {
            let alertview = UIAlertController(title: "Enter correct detail", message: "Login failed", preferredStyle: .alert)
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
            }))
            
            self.present(alertview, animated: true, completion: nil)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

