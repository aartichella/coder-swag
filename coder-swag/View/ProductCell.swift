//
//  ProductCell.swift
//  coder-swag
//
//  Created by Aarti Chella on 2/9/19.
//  Copyright © 2019 aarti. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product:Product){
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.name
        productPrice.text = product.price
    }
}
