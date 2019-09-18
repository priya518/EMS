//
//  Register.swift
//  EMS
//
//  Created by COE-027 on 12/09/19.
//  Copyright © 2019 COE-027. All rights reserved.
//

import UIKit

class Register: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate,UIPickerViewDelegate,UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CountryList.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.CountryList[row]
    }
    
    var CountryList = ["India", "Canada","U.S.A","other"]
    
    @IBOutlet weak var Country: UIPickerView!
    
    @IBOutlet weak var Name: UITextField!
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Pass: UITextField!
    
    @IBOutlet weak var Confirmpass: UITextField!
    

    @IBAction func ShowPass(_ sender: Any) {
        
        Pass.isSecureTextEntry = !(Pass.isSecureTextEntry)
        Confirmpass.isSecureTextEntry = !(Confirmpass.isSecureTextEntry)
        
    }
    
    
    @IBAction func Register(_ sender: Any) {
        
        if (Name.text == "") {
            
            let alertview = UIAlertController(title: "Incorrect Detail", message: "Incorrect Detail", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
            
        }
            
        else if(Email.text == "") {
            let alertview = UIAlertController(title: "Incorrect Detail", message: "Incorrect Detail", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
            
        }
        else if(Pass.text == "") {
            let alertview = UIAlertController(title: "Incorrect Detail", message: "Incorrect Detail", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
            
        }
        else if(Confirmpass.text == "") {
            let alertview = UIAlertController(title: "Incorrect Detail", message: "Incorrect Detail", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
            
        }
        else if(Pass.text!  == Confirmpass.text!)
        {
            let alertview = UIAlertController(title: "Registration Confirm", message: "Done", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
        }
        else {
            let alertview = UIAlertController(title: "Incorrect Detail", message: "Incorrect Detail", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "OK", style: .cancel, handler:  { _ in }))
            self.present(alertview, animated: true, completion: nil)
        }
        
        print(self.Name.text!)
        print(self.Email.text!)
        print(self.Pass.text!)
        print(self.Confirmpass.text!)
    }
    
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        Userimageview.image = image
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBOutlet weak var Userimageview: UIImageView!
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
   
    var ImagePickerController:UIImagePickerController!
    
    @IBAction func pickimage(_ sender: UIButton) {
        
        ImagePickerController = UIImagePickerController()
        ImagePickerController.delegate = self
        ImagePickerController.sourceType = .photoLibrary
        //self.navigationController?.pushViewController(ImagePickerController, animated: true)
    self.present(ImagePickerController, animated: true, completion: nil)
    
    }
}
