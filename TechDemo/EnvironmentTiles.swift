//
//  EnvironmentTiles.swift
//  TechDemo
//
//  Created by Bernardo Alecrim on 2/15/17.
//  Copyright © 2017 Bernardo Alecrim. All rights reserved.
//

import Foundation
import SpriteKit

extension SKTileableNode{
    
    static var ground: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isocube",
                                   tileDepth: 0,
                                   accessible: true,
                                   tileHeight: .fullHeight)
        }
    }
    
    static var showcase: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "showcase",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
        
    static var wall: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isowall",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var wall_alarm: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "wall_alarm",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var wall_hall: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "wall_hall",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var log_hall: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "log_hall",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var dorm1: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "dorm1",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var dorm2: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "dorm2",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var dorm3: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "dorm3",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var exitDoor: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "exitDoor",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }
    
    static var postItWall: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isopostit",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
        }
    }

    
    static var air: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "transparent",
                                   tileDepth: 0,
                                   accessible: true,
                                   tileHeight: .fullHeight)
        }
    }
    
    static var hardair: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "transparent",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .fullHeight)
        }
    }

    
    static var closet: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isocloset",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
            
        }
    }
    
    static var bedL: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "bedL",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
            
        }
    }
    
    static var bedR: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "bedR",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight)
            
        }
    }
    
    static var log: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isolog",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight,
                                   tileInformation:["Wait a second...",
                                                    "There's a bunch of mail here about an \"emergency\"",
                                                    "What IS going on in here?"])
            
        }
    }
    
    static var shelf: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "isoshelf",
                                   tileDepth: 0,
                                   accessible: false,
                                   tileHeight: .doubleHeight,
                                   tileInformation:["\"Art of War\", \"The Martian\", \"Twilight\" "
                                                    + "and a bunch of random programming manuals.",
                                                    "My book collection sure is odd."])
            
        }
    }


    
    static var trash: SKInteractiveNode{
        get{
            let texture = SKTexture.init(imageNamed: "trashCan")
            return SKInteractiveNode.init(textures: [.inactive: texture],
                                          tileDepth: 0,
                                          tileHeight: .fullHeight)
            
        }
    }
    
    static var plant: SKInteractiveNode{
        get{
            let texture = SKTexture.init(imageNamed: "plant")
            return SKInteractiveNode.init(textures: [.inactive: texture],
                                          tileDepth: 0,
                                          tileHeight: .fullHeight)
            
        }
    }
    
    static var papers: SKInteractiveNode{
        get{
            let texture = SKTexture.init(imageNamed: "papers")
            return SKInteractiveNode.init(textures: [.inactive: texture],
                                          tileDepth: 0,
                                          tileHeight: .fullHeight)
            
        }
    }
    
    
    static var buttonActive: SKTileNode{
        get{
            return SKTileNode.init(spriteName: "buttonActive",
                                   tileDepth: 0,
                                   accessible: true,
                                   tileHeight: .fullHeight)
            
        }
    }
    
}
