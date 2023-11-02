//
//  GradientView.swift
//  GradiendandShadow
//
//  Created by Denis Evdokimov on 11/2/23.
//

import UIKit

class GradientView: UIView {

    private let  gradient = CAGradientLayer()
    private let  cornerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGradient()
        setupCorner()
        setupShadow()
        
        addSubview(cornerView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
        cornerView.frame = bounds
    }
    
    private func setupGradient() {
        
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        cornerView.layer.addSublayer(gradient)
    }
    
    private func setupCorner() {
        cornerView.clipsToBounds =  true
        cornerView.layer.cornerRadius = 10.0
    }
    
    private func setupShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 2.5 , height: 2.5)
        layer.shadowRadius = 7
    }
}
