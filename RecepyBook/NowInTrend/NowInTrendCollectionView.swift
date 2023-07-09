//
//  NowInTrendCollectionView.swift
//  RecepyBook
//
//  Created by Ярослав Вербило on 2023-07-09.
//

import UIKit


class NowInTrendCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    static let shared = NowInTrendCollectionView()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = .clear
        delegate = self
        dataSource = self
        register(NowInTrendCollectionViewCell.self, forCellWithReuseIdentifier: NowInTrendCollectionViewCell.reuseId)
        
        layout.minimumLineSpacing = 15
        contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
   }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wishList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: NowInTrendCollectionViewCell.reuseId, for: indexPath) as! NowInTrendCollectionViewCell
        cell.imageView.image = newDishes[indexPath.row].image
        cell.nameLabel.text = newDishes[indexPath.row].name
        cell.descriptionLabel.text = newDishes[indexPath.row].description
        cell.backgroundColor = UIColor(red: 244/255, green: 254/255, blue: 253/255, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
                // Size for the first cell
                return CGSize(width: 390, height: 390)
            } else {
                // Size for the remaining cells
                return CGSize(width: (frame.width - 50) / 2, height: 170)
            }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
