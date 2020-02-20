//
//  ProductViewController.swift
//  coder-swag
//
//  Created by Fragoso, Hector on 2/19/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productsCollection: UICollectionView!
    @IBOutlet weak var noProductsView: UIView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleNoProductsView()
        // Do any additional setup after loading the view.
    }
    
    func initProducts(forCategory category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            cell.updateViews(forProduct: products[indexPath.row])
            return cell
        }
        return ProductCell()
    }
    
    private func toggleNoProductsView() {
        if products.count == 0 {
            noProductsView.isHidden = false
        } else {
            noProductsView.isHidden = true
        }
    }

}
