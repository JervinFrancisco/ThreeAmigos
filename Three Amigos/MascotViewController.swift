//
//  MascotViewController.swift
//  Three Amigos
//
//  Created by Jervin Francisco on 2017-09-19.
//  Copyright © 2017 Algonquin College. All rights reserved.
//

import UIKit

class MascotViewController: UIViewController {

    @IBOutlet weak var mascotImage: UIImageView!
    @IBOutlet weak var mascotName: UILabel!
    
    // name array of strings
    
    var names: [String] = ["Android", "Duke", "Tux"]
    
    // names[0] is "Andriod"
    // names[1] is "Duke"
    // names[2] is "Tux"
    // names[3] is "Undefined"

    // size of names is 3
    // domain values of names array is: 0 ,1 ,2
    
    // image array of UIImages
    var images: [UIImage] = [
        UIImage(named: "android.png")!,
        UIImage(named: "duke.png")!,
        UIImage(named: "tux.png")!,
    ]
  
    var index: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }
    @IBAction func handleNext(_ sender: Any){
        index = index + 1
        if ( index >= names.count){
            index = 0
        }
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }
    @IBAction func handlePrevious(_ sender: Any) {
        index = index - 1
        if ( index < 0) {
            index = names.count - 1
        }
        mascotImage.image = images[index]
        mascotName.text = names[index]
    }
}
