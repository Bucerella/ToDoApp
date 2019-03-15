//
//  ViewController.swift
//  Todo
//
//  Created by Buse ERKUŞ on 7.03.2019.
//  Copyright © 2019 Buse ERKUŞ. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    let bg : UIView = {
       let view = GDGradient()
       view.translatesAutoresizingMaskIntoConstraints = false
       view.backgroundColor = .cyan
       view.layer.cornerRadius = 24
       return view
    }()
    let titleLabel = GDLabel(title: "GET DO IT", color: .white, size: 24, textAlign: .center)
    let infoLabel: UILabel = {
        let label = GDLabel(title: "WELCOME. GET IT DONE IS A TO \nDO LIST. A REALLY DOPE TO-DO LIST.", color: .white, size: 14,textAlign: .center)
         label.numberOfLines = 2
        return label
    }()
    let nextButton: UIButton = GDButton(title: "START WINNING", type: .roundedText)
    let copyright = GDLabel(title: "© 2019 | Bucerella.io", color: .grayOne, size: 14, textAlign: .center)
    
    @objc func handleNext(){
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.nextButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) { (_) in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                 self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: { (_) in
                self.present(ListController(), animated: true,completion: nil)
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UserDefaults.standard.set(true, forKey: "welcome-controller-visited")
        
        nextButton.addTarget(self, action: #selector(self.handleNext), for: [.touchUpInside, .touchUpOutside])
        
        view.backgroundColor = .white
        view.addSubview(bg)
        
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
    
        bg.addSubview(infoLabel)
       
        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        bg.addSubview(nextButton)
        
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -60).isActive = true
    
        view.addSubview(copyright)
        
        copyright.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyright.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyright.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyright.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    
    }
}



