//
//  SecondCompositionalCell.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import UIKit

class VerticalCell: UICollectionViewCell {
    
    var model: Model? {
        didSet {
            imageIconLeft.image = UIImage(systemName: model?.image ?? "")
            firstLabel.text = model?.firstLabel
            secondLabel.text = String(Int.random(in: 0...100))
        }
    }
    
    static let id = "VerticalCell"
    
    // MARK: - Outlets
    
    private let imageIconLeft: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .systemBlue
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        label.textColor = .systemGray2
        label.textAlignment = .right
        return label
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor =
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Setups
    
    private func setupHierarchy() {
        addSubview(imageIconLeft)
        addSubview(firstLabel)
        addSubview(secondLabel)
    }
    
    private func setupLayout() {
        imageIconLeft.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.width.height.equalTo(32)
            make.centerY.equalToSuperview()
        }
        
        firstLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageIconLeft.snp.right).offset(15)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(35)
            make.width.equalTo(150)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        self.accessoryType = .none
//        self.model = nil
    }
}

