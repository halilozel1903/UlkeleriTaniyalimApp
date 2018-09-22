//
//  UlkelerCollectionViewCell.swift
//  UlkeleriTaniyalim
//
//  Created by Halil Özel on 23.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class UlkelerCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewUlke: UIImageView!
    
    @IBOutlet weak var textViewUlke: UILabel!
    
    func setCountry(ulkeler:Ulkeler){
        imageViewUlke.image = UIImage(named: ulkeler.image!)
        textViewUlke.text = ulkeler.name!
    }
}
