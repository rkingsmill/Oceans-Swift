//
//  Submarine.swift
//  Ocean-Swift
//
//  Created by Rosalyn Kingsmill on 2016-06-07.
//  Copyright © 2016 com.lighthouse-labs. All rights reserved.
//

import Foundation

class Submarine {
    
    var depth: Int
    var tile: Int
    
    init() {
        self.depth = 0
        self.tile = 0
    }
    
    func dive() {
        if (self.depth == 0) {
            self.depth = 1
        }
    }
    
    func surface() {
        if (self.depth == 1) {
            self.depth = 0
        }
    }
    
    func descend() {
        if (self.depth > 0 && self.depth < 4) {
            self.depth += 1
        }
    }
    
    func ascend() {
        if (self.depth > 1) {
            self.depth -= 1
        }
    }
    
    func forward() {
        if (self.depth > 0 && self.depth < 5) {
        self.tile += 1
        }
    }
    
    func backwards() {
        if (self.depth > 0 && self.depth > 1) {
        self.tile -= 1
        }
    }
}