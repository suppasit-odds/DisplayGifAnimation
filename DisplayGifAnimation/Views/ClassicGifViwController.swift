//
//  ClassicGifViwController.swift
//  DisplayGifAnimation
//
//  Created by Suppasit chuwatsawat on 29/3/2567 BE.
//

import UIKit

class ClassicGifViwController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.loadGif(name: "lock_2_ok")
    }
}
