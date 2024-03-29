//
//  NewGifViwControllerViewController.swift
//  DisplayGifAnimation
//
//  Created by Suppasit chuwatsawat on 29/3/2567 BE.
//

import UIKit
import Gifu

class NewGifViwControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gifImageView = GIFImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 150))
        gifImageView.animate(withGIFNamed: "lock_2_ok")
        self.view.addSubview(gifImageView)
        gifImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gifImageView.widthAnchor.constraint(equalToConstant: 250),
            gifImageView.heightAnchor.constraint(equalToConstant: 150),
            gifImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            gifImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
