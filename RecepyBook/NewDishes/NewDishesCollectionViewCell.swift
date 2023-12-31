//
//  NewDishesCollectionViewCell.swift
//  RecepyBook
//
//  Created by Ярослав Вербило on 2023-07-09.
//

import UIKit


class NewDishesCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "NewDishesCollectionViewCell"
    
    let imageView: UIImageView = {
        let imgv = UIImageView()
        imgv.translatesAutoresizingMaskIntoConstraints = false
        imgv.contentMode = .scaleAspectFit
        return imgv
    }()
    
    let nameLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(red: 94/255, green: 178/255, blue: 158/255, alpha: 1)
        lbl.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return lbl
    }()
    
    let descriptionLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .black
        lbl.numberOfLines = 0
        lbl.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        

        imageView.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        nameLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        
        
        descriptionLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 30
//        self.layer.shadowRadius = 9
//        layer.shadowOpacity = 0.3
//        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

