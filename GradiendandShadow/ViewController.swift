//
//  ViewController.swift
//  GradiendandShadow
//
//  Created by Denis Evdokimov on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var gradientView: UIView = {
        let view = GradientView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(gradientView)
        setupConstraint()
        
    }
    
    private func setupConstraint() {
        NSLayoutConstraint.activate([
            gradientView.heightAnchor.constraint(equalToConstant: 100),
            gradientView.widthAnchor.constraint(equalToConstant: 100),
            gradientView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            gradientView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 100)
        ])
    }
    
}

