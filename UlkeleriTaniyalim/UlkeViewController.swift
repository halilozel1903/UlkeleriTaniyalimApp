//
//  UlkeViewController.swift
//  UlkeleriTaniyalim
//
//  Created by Halil Özel on 23.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class UlkeViewController: UIViewController {

    
    @IBOutlet weak var imageViewUlke: UIImageView!
    @IBOutlet weak var labelUlkeAdi: UILabel!
    @IBOutlet weak var textViewUlkeDetay: UITextView!
    var ulkeler:Ulkeler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelUlkeAdi.text = ulkeler?.name!
        textViewUlkeDetay.text = ulkeler?.desc!
        imageViewUlke.image = UIImage(named: (ulkeler?.image)!)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    

}
