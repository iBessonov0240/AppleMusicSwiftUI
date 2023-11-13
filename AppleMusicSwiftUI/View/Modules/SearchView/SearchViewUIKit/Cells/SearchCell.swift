//
//  SearchCell.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 13.11.2023.
//

import UIKit

class SearchCell: UICollectionViewCell {

    // MARK: - Outlets

    private var musicCategoryImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubview(musicCategoryImageView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            musicCategoryImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            musicCategoryImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            musicCategoryImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            musicCategoryImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    func render(image: String) {
        musicCategoryImageView.image = UIImage(named: image)
    }
}
