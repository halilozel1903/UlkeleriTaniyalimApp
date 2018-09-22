//
//  ViewController.swift
//  UlkeleriTaniyalim
//
//  Created by Halil Özel on 23.09.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfUlkeler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellUlke:UlkelerCollectionViewCell = collectionViewUlke.dequeueReusableCell(withReuseIdentifier: "UlkeCell", for: indexPath) as! UlkelerCollectionViewCell
        cellUlke.setCountry(ulkeler: listOfUlkeler[indexPath.row])
        return cellUlke
    }
    
    
    var listOfUlkeler = [Ulkeler]()

    @IBOutlet weak var collectionViewUlke: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadUlkeFromPropertyList()
        
        collectionViewUlke.dataSource = self
        collectionViewUlke.delegate = self
    }
    
    func loadUlkeFromPropertyList(){
        let path = Bundle.main.path(forResource: "UlkeList", ofType: "plist")! as String
        let url = URL(fileURLWithPath: path)
        
        do {
            let data = try Data(contentsOf: url)
            let plist = try PropertyListSerialization.propertyList(from:data,options: .mutableContainers,format: nil)
            let dictArray = plist as! [[String:String]]
            for ulke in dictArray{
                
                print(ulke["Name"]!)
                listOfUlkeler.append(Ulkeler(name: ulke["Name"]!, desc: ulke["Desc"]!, image: ulke["Image"]!))
            }
        } catch  {
            print("error !!!")
        }
    }


}

