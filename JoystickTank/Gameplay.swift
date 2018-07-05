//
//  Gameplay.swift
//  JoystickTank
//
//  Created by Alex Nagy on 05/07/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import SpriteKit

class Gameplay: SKScene {
  
  let velocityMultiplier: CGFloat = 0.12
  
  enum NodesZPosition: CGFloat {
    case background, hero, joystick
  }
  
  lazy var background: SKSpriteNode = {
    var sprite = SKSpriteNode(imageNamed: "Background")
    sprite.position = CGPoint.zero
    sprite.zPosition = NodesZPosition.background.rawValue
    sprite.scaleTo(screenWidthPercentage: 1.0)
    return sprite
  }()
  
  lazy var hero: SKSpriteNode = {
    var sprite = SKSpriteNode(imageNamed: "Hero")
    sprite.position = CGPoint.zero
    sprite.zPosition = NodesZPosition.hero.rawValue
    sprite.scaleTo(screenWidthPercentage: 0.23)
    return sprite
  }()
  
  //  lazy var analogJoystick: AnalogJoystick = {
  //    let js = AnalogJoystick(diameter: 100, colors: nil, images: (substrate: #imageLiteral(resourceName: "jSubstrate"), stick: #imageLiteral(resourceName: "jStick")))
  //    js.position = CGPoint(x: ScreenSize.width * -0.5 + js.radius + 45, y: ScreenSize.height * -0.5 + js.radius + 45)
  //    js.zPosition = NodesZPosition.joystick.rawValue
  //    return js
  //  }()
  
  override func didMove(to view: SKView) {
    setupNodes()
    setupJoystick()
  }
  
  func setupNodes() {
    anchorPoint = CGPoint(x: 0.5, y: 0.5)
    addChild(background)
    addChild(hero)
  }
  
  func setupJoystick() {
    //    addChild(analogJoystick)
    //
    //    analogJoystick.trackingHandler = { [unowned self] data in
    //      self.hero.position = CGPoint(x: self.hero.position.x + (data.velocity.x * self.velocityMultiplier),
    //                                   y: self.hero.position.y + (data.velocity.y * self.velocityMultiplier))
    //      self.hero.zRotation = data.angular
    //    }
    
  }
}

