//
//  ViewController.swift
//  CustomPhotoCroper
//
//  Created by Mohsin on 18/07/2015.
//  Copyright (c) 2015 Mohsin. All rights reserved.
//

import UIKit
import MobileCoreServices


class ViewController: UIViewController, GKImagePickerDelegate{

    
    var gkImagePicker = GKImagePicker()
    
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    


    
    
    
    // kgimagePicker
    
    func imagePicker(imagePicker: GKImagePicker!, pickedImage image: UIImage!) {
        println("image selected")

        self.image.image = image
        self.gkImagePicker.imagePickerController.dismissViewControllerAnimated(true, completion: nil)
    }

    
    @IBAction func done(sender: UIButton) {
        self.gkImagePicker.delegate = self
        
        if UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Phone{
            self.gkImagePicker.cropSize = image.frame.size

        }else if  UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.Pad {
            self.gkImagePicker.cropSize = image.frame.size

        }

//        // if you want to take a resizable crop area
//        self.gkImagePicker.resizeableCropArea = true
        
        
        self.presentViewController(self.gkImagePicker.imagePickerController, animated: true, completion: nil)
        
    }
}

