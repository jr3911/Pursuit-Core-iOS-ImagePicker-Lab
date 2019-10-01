//
//  ViewController.swift
//  ImagePicker Lab
//
//  Created by Jason Ruan on 10/1/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: IBOutlets
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    //MARK: IBActions
    @IBAction func editButtonPressed(_ sender: UIBarButtonItem) {
        setUpImagePickerController()
    }
    
    //MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loadGenericProfile()
    }
    
    private func loadGenericProfile() {
        profilePic.layer.masksToBounds = true
        profilePic.layer.cornerRadius = profilePic.bounds.width / 2
        profilePic.image = UIImage(named: "genericProfilePic")
        nameLabel.text = "Joe Schmoe"
    }
    
    func setUpImagePickerController() {
        let imagePickerViewController = UIImagePickerController()
        imagePickerViewController.delegate = self
        present(imagePickerViewController, animated: true, completion: nil)
        //open up that image picker thing, add it
    }

}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {
            //couldn't get image :(
            return
        }
        
        let d = info[.mediaType] as! String
        
        profilePic.image = image
        nameLabel.text = d
        
        dismiss(animated: true, completion: nil)
    }
}
