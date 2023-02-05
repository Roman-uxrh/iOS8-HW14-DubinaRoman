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
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
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
    
    private let imageIconRight: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "chevron.right"))
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.tintColor = .systemGray2
        return image
    }()
    
    private lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray4
        return line
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
        addSubview(imageIconRight)
        addSubview(line)
    }
    
    private func setupLayout() {
        imageIconLeft.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.width.height.equalTo(27)
            make.centerY.equalToSuperview()
        }
        
        firstLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(imageIconLeft.snp.right).offset(15)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(40)
            make.width.equalTo(150)
        }
        
        imageIconRight.snp.makeConstraints { make in
            make.left.equalTo(secondLabel.snp.right).inset(-5)
            make.width.height.equalTo(17)
            make.centerY.equalToSuperview()
        }
        
        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.top.equalTo(firstLabel.snp.bottom).inset(-10)
            make.left.equalTo(firstLabel.snp.left)
            make.right.equalToSuperview()
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.model = nil
    }
}

