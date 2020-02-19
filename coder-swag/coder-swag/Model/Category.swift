//
//  Category.swift
//  coder-swag
//
//  Created by Fragoso, Hector on 2/18/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) var title:String
    private(set) var imageName: String
    
    init(title: String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
    
}
