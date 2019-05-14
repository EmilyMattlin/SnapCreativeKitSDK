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


    @IBAction func tester(_ sender: Any, forEvent event: UIEvent) {
        print("Hello world")
        let imageName = "yourImage.png"
        let image = UIImage(named: imageName)
        let photo = SCSDKSnapPhoto(image: image!)
        let photoContent = SCSDKPhotoSnapContent(snapPhoto: photo)
        let api = SCSDKSnapAPI(content: photoContent)
//        api.startSnapping(completionHandler: { (error: Error?) in
//            /* Do something */
//        })
        api.startSnapping() { [weak self] (error: Error?) in
            self?.view.isUserInteractionEnabled = true
            // Handle response
        }

    }
    
    @IBAction func alerted() {
        let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)

    }
    
}

