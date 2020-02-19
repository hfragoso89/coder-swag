//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Fragoso, Hector on 2/18/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var caategoryTitle: UILabel!

    func updateViews(withCategory category:Category) {
        categoryImage.image = UIImage(named: category.imageName)
        caategoryTitle.text = category.title
    }

}
