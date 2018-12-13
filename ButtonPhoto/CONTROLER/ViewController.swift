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
        let caméra = UIImagePickerController.isSourceTypeAvailable(.camera)
        let phototèque = UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        
        switch (caméra, phototèque) {
        case (true, true):
            let Choice = UIAlertController(title:nil, message: nil, preferredStyle: .actionSheet)
            let actionCamera = UIAlertAction(title: "Caméra", style: .default, handler: { _ in self.Selection(pour: .camera)})
            let actionPhototeque = UIAlertAction(title: "Phototèque", style: .default, handler: { _ in self.Selection(pour: .photoLibrary)})
            let actionAnnuler = UIAlertAction(title: "Annuler", style: .cancel)
            Choice.addAction(actionCamera)
            Choice.addAction(actionPhototeque)
            Choice.addAction(actionAnnuler)
            present(Choice, animated: true)
        case (true, false) :
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
            
        case (false, true) :
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        default :
            break
        }
        //if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
          //  var imagePicker = UIImagePickerController()
        //imagePicker.delegate = self
          //  imagePicker.sourceType = .photoLibrary;
            //imagePicker.allowsEditing = true
           // self.present(imagePicker, animated: true, completion: nil)
       // }
        }
   
    func Selection(pour typeSource: UIImagePickerController.SourceType) {
        let selecteur = UIImagePickerController()
        selecteur.sourceType = typeSource
        selecteur.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        present(selecteur, animated: true)
        
        
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
