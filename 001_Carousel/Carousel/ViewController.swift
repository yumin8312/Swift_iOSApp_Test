//
//  ViewController.swift
//  Carousel
//
//  Created by yumin on 21/04/2017.
//  Copyright © 2017 YU MIN HUANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var bgImage: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var carouseData = ["Light art.png","Valentine Bridge.png","QiuhongValley.png","nightView.png","ButterflyBridge.png","church.png","DomeLight.png","FortZeelandia.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carouseData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carouselCell", for: indexPath) as! CollectionViewCell
        
        cell.celllImage.image = UIImage(named: carouseData[indexPath.row])
        
        return cell
    }
}

