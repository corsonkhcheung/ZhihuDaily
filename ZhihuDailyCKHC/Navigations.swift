//
//  Navigations.swift
//  小飞机
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/1.
//

import SwiftUI

var aeroplaneWithinBounds: Bool?

class navigations {
    
    func judgeAeroplanePosition() {
        if (aeroplane.center.y <= SCREEN.height - 50
            && aeroplane.center.x <= SCREEN.width - 50
            && aeroplane.center.y >= 100
            && aeroplane.center.x >= 0)
         { aeroplaneWithinBounds = true }
        else { aeroplaneWithinBounds = false }
    }
    
    @objc func moveUpwards() {
        judgeAeroplanePosition()
        if ( aeroplaneWithinBounds == true ) {
            UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                aeroplane.center.y -= 10
                aeroplane.layoutIfNeeded()
            }, completion: nil)
        } else { resetPosition() }
    }
    
    @objc func moveDownwards() {
        judgeAeroplanePosition()
        if ( aeroplaneWithinBounds == true ) {
            UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                aeroplane.center.y += 10
                aeroplane.layoutIfNeeded()
            }, completion: nil)
        } else { resetPosition() }
    }
    
    @objc func moveLeft() {
        judgeAeroplanePosition()
        if ( aeroplaneWithinBounds == true ) {
            UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                aeroplane.center.x -= 10
                aeroplane.layoutIfNeeded()
            }, completion: nil)
        } else { resetPosition() }
    }
    
    @objc func moveRight() {
        judgeAeroplanePosition()
        if ( aeroplaneWithinBounds == true ) {
            UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            aeroplane.center.x += 10
            aeroplane.layoutIfNeeded()
            }, completion: nil)
        } else { resetPosition() }
    }
    
    @objc func resetPosition() {
        judgeAeroplanePosition()
        UIView.animate(withDuration: 10, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            aeroplane.center.x = SCREEN.width / 2
            aeroplane.center.y = SCREEN.height / 9 + 50
            aeroplane.layoutIfNeeded()
        }, completion: nil)
    }
    
}
