//
//  GameViewController.swift
//  TechDemo-iOS
//
//  Created by Bernardo Alecrim on 2/16/17.
//  Copyright © 2017 Bernardo Alecrim. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    #if os(iOS)
        override var prefersStatusBarHidden: Bool{
            get{ return true }
        }
    #endif
    
    // Press Type
    func addGestureRecognizerWithType(_ pressType : UIPress.PressType, selector : Selector) {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: selector)
        tapGestureRecognizer.allowedPressTypes = [NSNumber(value: pressType.rawValue as Int)];
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    // Swipes
    func addSwipeGestureRecognizerWithType(_ direction : UISwipeGestureRecognizer.Direction, selector : Selector) {
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: selector)
        swipeGestureRecognizer.direction = direction
        view.addGestureRecognizer(swipeGestureRecognizer)
    }
    
    func eventoKeyboard(){
        addGestureRecognizerWithType(UIPress.PressType.upArrow, selector: #selector(self.up))
        addGestureRecognizerWithType(UIPress.PressType.downArrow, selector: #selector(self.down))
        addGestureRecognizerWithType(UIPress.PressType.leftArrow, selector: #selector(self.left))
        addGestureRecognizerWithType(UIPress.PressType.rightArrow, selector: #selector(self.right))
    }
    
    func eventoSwipes(){
        addSwipeGestureRecognizerWithType(.right, selector: #selector(self.right))
        addSwipeGestureRecognizerWithType(.left, selector: #selector(self.left))
        addSwipeGestureRecognizerWithType(.up, selector: #selector(self.up))
        addSwipeGestureRecognizerWithType(.down, selector: #selector(self.down))
    }
    
    func eventoPress(){
        addGestureRecognizerWithType(UIPress.PressType.select, selector: #selector(self.selectButton))
        addGestureRecognizerWithType(UIPress.PressType.menu, selector: #selector(self.menu))
        addGestureRecognizerWithType(UIPress.PressType.playPause, selector: #selector(self.playPause))
        
    }
    
    @IBAction func selectPressed() {
        if let gScene = (self.view as? SKView)?.scene as? BaseGameScene{
            if let character = gScene.characterNode{
                gScene.characterSelect(near: character)
            }
        }
    }
    
    // MARK: Tap events
    @IBAction func selectButton(){
        print("select")
        selectPressed()
    }
    
    @objc func playPause(){
        print("play")
    }
    
    @objc func menu(){
        print("menu")
    }

    
    @objc @IBAction func up(){
        move(on: .up)
    }
    
    @IBAction func down(){
        move(on: .down)
    }
    
    @IBAction func left(){
        move(on: .left)
    }
    
    @IBAction func right(){
        move(on: .right)
    }
    
    
    func move(on direction: MovementDirection){
        DispatchQueue.main.async {
            if let gScene = (self.view as? SKView)?.scene as? BaseGameScene{
                if let character = gScene.characterNode{
                    gScene.move(character: character, on: direction)
                }
            }
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventoPress()
        eventoSwipes()
        eventoKeyboard()
        
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = RoomScene.init(size: view.frame.size)
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view.presentScene(scene)
            
            print(scene.camera!)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
}
