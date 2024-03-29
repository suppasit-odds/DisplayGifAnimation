//
//  LottieViwControllerViewController.swift
//  DisplayGifAnimation
//
//  Created by Suppasit chuwatsawat on 29/3/2567 BE.
//

import UIKit
import Lottie

class LottieViwControllerViewController: UIViewController {
    
    private lazy var animationView: LottieAnimationView = {
        let view = LottieAnimationView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLottieAnimation()
        setupUI()
    }
    
    private func setupLottieAnimation() {
        let path = Bundle.main.path(forResource: "lock-2-lottie", ofType: "json") ?? ""
        let animation = LottieAnimation.filepath(path)
        animationView.animation = animation
        animationView.loopMode = .loop
        animationView.play()
    }
    
    private func setupUI() {
        self.view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalToConstant: 250),
            animationView.heightAnchor.constraint(equalToConstant: 150),
            animationView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            animationView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
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
