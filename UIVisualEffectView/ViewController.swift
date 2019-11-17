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
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Swift"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupImageView()
        let blurEffect = UIBlurEffect(style: .light)
        view.addSubview(blurView)
        blurView.effect = blurEffect
        setupBlurView()
        
        blurView.contentView.addSubview(label)
        label.centerXAnchor.constraint(equalTo: blurView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: blurView.centerYAnchor).isActive = true
    }
    
    fileprivate func setupBlurView() {
        blurView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        blurView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        blurView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        blurView.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    fileprivate func setupImageView() {
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

