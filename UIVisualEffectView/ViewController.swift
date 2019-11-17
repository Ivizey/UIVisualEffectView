//
//  ViewController.swift
//  UIVisualEffectView
//
//  Created by Pavel Bondar on 17.11.2019.
//  Copyright © 2019 Pavel Bondar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "photo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let blurView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        let blurEffect = UIBlurEffect(style: .light)
        view.addSubview(blurView)
        blurView.effect = blurEffect
        blurView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        blurView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        blurView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        blurView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

