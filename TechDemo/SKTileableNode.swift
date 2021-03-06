//
// Created by Bernardo Alecrim on 2/14/17.
// Copyright (c) 2017 Bernardo Alecrim. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class SKTileableNode: SKSpriteNode {

    enum TileHeight{
        case halfHeight
        case fullHeight
        case doubleHeight
    }

    var height: TileHeight = .fullHeight

    var isPlaced: Bool = false
    
    fileprivate var gridStorage: (x: Int, y: Int, z: Int) = (x: 0, y: 0, z: 0)

    var gridPosition: (x: Int, y: Int, z: Int){
        get{
            return gridStorage
        }
        set{
            gridStorage = newValue
            
            if isPlaced{
                let notifName = NSNotification.Name.init(rawValue: NotificationIdentifiers.tilePositionChanged.rawValue)
                NotificationCenter.default.post(name: notifName,
                                                object: self,
                                                userInfo: ["newPosition" : newValue])
            }
        }

    }
    
    init(texture: SKTexture?, color: UIColor, size: CGSize, height: TileHeight = .fullHeight){
        self.height = height
        super.init(texture: texture, color: color, size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

extension SKTileableNode{
    func neighbourPosition(for direction: MovementDirection) -> (x: Int, y: Int, z: Int){
        switch direction{
            case .up:
                return (x: self.gridPosition.x, y: (self.gridPosition.y - 1), z: self.gridPosition.z)
            case .down:
                return (x: self.gridPosition.x, y: (self.gridPosition.y + 1), z: self.gridPosition.z)
            case .left:
                return (x: (self.gridPosition.x - 1), y: self.gridPosition.y, z: self.gridPosition.z)
            case .right:
                return (x: (self.gridPosition.x + 1), y: self.gridPosition.y, z: self.gridPosition.z)
        }
    }
    
    func underneathPosition() -> (x: Int, y: Int, z: Int){
        return (x: self.gridPosition.x, y: self.gridPosition.y, z: (self.gridPosition.z - 1))
    }
    
    func abovePosition() -> (x: Int, y: Int, z: Int){
        return (x: self.gridPosition.x, y: self.gridPosition.y, z: (self.gridPosition.z + 1))
    }

    static func getSizeFor(height: TileHeight) -> CGSize{
        
        let finalSize: CGSize
        
        switch height{
        case .halfHeight:
            finalSize = CGSize(width: SKTileNode.baseSize.width, height: SKTileNode.baseSize.height * 0.5)
        case .fullHeight:
            finalSize = SKTileNode.baseSize
        case .doubleHeight:
            finalSize = CGSize(width: SKTileNode.baseSize.width, height: SKTileNode.baseSize.height * 1.5)
        }
        
        return finalSize
    }
    

    
}
