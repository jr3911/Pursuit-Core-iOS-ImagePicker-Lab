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
    }


}

