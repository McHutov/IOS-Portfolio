//
//  RoudnButtonExtension.swift
//  VoicePlay
//
//  Created by Дастан Махутов on 16.05.2021.
//

import Foundation
import UIKit

@IBDesignable
class RoundButton: UIButton{
    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton{
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
        didSet {
            setNeedsLayout()
        }
    }

    @IBInspectable var shadowOffsetWidth: CGFloat = 0.0 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOffsetHeight: CGFloat = 1.8 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat = 0.30 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 3.0 {
        didSet{
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowLayer: CAShapeLayer = CAShapeLayer() {
        didSet{
            setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: frame.height / 2).cgPath
        shadowLayer.fillColor = backgroundColor?.cgColor
        shadowLayer.shadowColor = shadowColor.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        shadowLayer.shadowOpacity = Float(shadowOpacity)
        shadowLayer.shadowRadius = shadowRadius
        layer.insertSublayer(shadowLayer, at: 0)
    }
    
    
    
}
