//
//  ViewController.swift
//  CollectionVCScrollTest01
//
//  Created by jh on 2022/01/17.
//

import UIKit

class NetworkCollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.backgroundColor = .darkGray
        return img
    }()
    
    let maskImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "icon_profile_mask")
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    
    let nicknameLbl: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        maskImage()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView() {
        
        addSubview(nicknameLbl)
        addSubview(imageView)
        
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        imageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        
        nicknameLbl.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        nicknameLbl.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
    }
    
    private func maskImage(){
        maskImageView.frame = CGRect(x: 0, y: 0, width: imageView.bounds.width, height: imageView.bounds.height)
        imageView.frame = CGRect(x: 0, y: 0, width: imageView.bounds.width, height: imageView.bounds.height)
        imageView.mask = maskImageView
    }
}
