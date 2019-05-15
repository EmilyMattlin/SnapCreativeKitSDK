//
//  ViewController.swift
//  Test
//
//  Created by Emily Mattlin on 5/14/19.
//  Copyright © 2019 Emily Mattlin. All rights reserved.
//

import UIKit
import SCSDKCreativeKit

class ViewController: UIViewController {

    var snapAPI: SCSDKSnapAPI?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//Uses photo in assets folder and opens snapchat to send the photo
    @IBAction func tester(_ sender: Any, forEvent event: UIEvent) {
        let imageName = "yourImage.png"
        let image = UIImage(named: imageName)
        let photo = SCSDKSnapPhoto(image: image!)
        let photoContent = SCSDKPhotoSnapContent(snapPhoto: photo)
        let api = SCSDKSnapAPI(content: photoContent)
        api.startSnapping() { (error: Error?) in
            print("Sharing pic to snapchat")
            // Handle responseprint("Sharing pic to snapchat")
        }

    }
    
    
}

