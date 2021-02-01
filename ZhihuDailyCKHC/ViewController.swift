//
//  ViewController.swift
//  ZhihuDailyCKHC
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/1.
//

import UIKit

let SCREEN = UIScreen.main.bounds

var imageSource = "aeroplaneIllustration"
var aeroplane = UIImageView()

var nav: navigations = navigations()

class ViewController: UIViewController {

    var testvar = 0
    
    var up = UIButton()
    var down = UIButton()
    var left = UIButton()
    var right = UIButton()
    var reset = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "小飞机"
        
        aeroplane.frame = CGRect(x: SCREEN.width / 2 - 50, y: SCREEN.height / 9, width: 100, height: 100)
        aeroplane.image = UIImage(imageLiteralResourceName: imageSource)
        view.addSubview(aeroplane)
        
        up.frame = CGRect(x: SCREEN.width / 2 - 25, y: SCREEN.height - 265, width: 50, height: 50)
        up.setImage(UIImage(systemName: "arrow.up"), for: .normal)
        up.addTarget(nav, action: #selector(navigations.moveUpwards), for: .touchUpInside)
        view.addSubview(up)
        
        down.frame = CGRect(x: SCREEN.width / 2 - 25, y: SCREEN.height - 150, width: 50, height: 50)
        down.setImage(UIImage(systemName: "arrow.down"), for: .normal)
        down.addTarget(nav, action: #selector(navigations.moveDownwards), for: .touchUpInside)
        view.addSubview(down)
        
        left.frame = CGRect(x: SCREEN.width / 2 - 80, y: SCREEN.height - 205, width: 50, height: 50)
        left.setImage(UIImage(systemName: "arrow.left"), for: .normal)
        up.addTarget(nav, action: #selector(navigations.moveLeft), for: .touchUpInside)
        view.addSubview(left)
        
        right.frame = CGRect(x: SCREEN.width / 2 + 30, y: SCREEN.height - 205, width: 50, height: 50)
        right.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        right.addTarget(nav, action: #selector(navigations.moveRight), for: .touchUpInside)
        view.addSubview(right)
        
        reset.frame = CGRect(x: SCREEN.width / 2 - 25, y: SCREEN.height - 205, width: 50, height: 50)
        reset.setImage(UIImage(systemName: "arrow.clockwise"), for: .normal)
        reset.addTarget(nav, action: #selector(navigations.resetPosition), for: .touchUpInside)
        view.addSubview(reset)
        
    }
}

