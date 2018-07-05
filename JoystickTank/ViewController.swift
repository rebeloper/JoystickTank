//
//  ViewController.swift
//  JoystickTank
//
//  Created by Alex Nagy on 05/07/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
  
  lazy var skView: SKView = {
    let view = SKView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    view.isMultipleTouchEnabled = true
    return view
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    setupViews()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  fileprivate func setupViews() {
    view.addSubview(skView)
    
    skView.frame = CGRect(x: 0.0, y: 0.0, width: ScreenSize.width, height: ScreenSize.height)
    
    let scene = Gameplay(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
    scene.scaleMode = .aspectFill
    skView.presentScene(scene)
    skView.ignoresSiblingOrder = true
    //    skView.showsFPS = true
    //    skView.showsNodeCount = true
    //    skView.showsPhysics = true
  }
  
}

