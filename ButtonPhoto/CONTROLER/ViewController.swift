//
//  ViewController.swift
//  ButtonPhoto
//
//  Created by Fabrice on 11/12/2018.
//  Copyright © 2018 Fabrice. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,
UINavigationControllerDelegate{


    
    @IBOutlet weak var MyImage: UIImageView!
    
    
    @IBAction func BoutonTouch(_ sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
        }
    // test commit
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
}
