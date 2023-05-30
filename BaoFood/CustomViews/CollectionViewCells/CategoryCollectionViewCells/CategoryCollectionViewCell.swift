//
//  CategoryCollectionViewCell.swift
//  BaoFood
//
//  Created by GiaBao on 09/04/2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabelLbl: UILabel!
    func setup(category: DishCategory){
        categoryLabelLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asUrl)
        
        print("Bug: \(category.name) -- \(category.image)")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
