//
//  ProductCell.swift
//  coder-swag
//
//  Created by Fragoso, Hector on 2/19/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var producPrice: UILabel!

    func updateViews(forProduct product:Product) {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        producPrice.text = product.price
    }
    
}
