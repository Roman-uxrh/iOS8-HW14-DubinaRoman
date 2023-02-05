//
//  Cell.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 04.02.2023.
//

import UIKit

class HorizontalCel: UICollectionViewCell {
    
    static let id = "HorizontalCel"
    
    var model: Model? {
        didSet {
            firstLabel.text = model?.firstLabel ?? ""
            secondLabel.text = String(Int.random(in: 0...100))
            photoImage.image = UIImage(named: model?.image ?? "")
        }
    }
    
    // MARK: - Outlets
    
    lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .black)
        return label
    }()
    
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .black)
        label.backgroundColor = .systemGray3
        return label
    }()
    
    lazy var photoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        stack.backgroundColor = .red
        return stack
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        backgroundColor = .red
    }
    
    private func setupHierarchy() {
        addSubview(stack)
        stack.addArrangedSubview(firstLabel)
        stack.addArrangedSubview(secondLabel)
        stack.addArrangedSubview(photoImage)
    }
    
    private func setupLayout() {
        stack.snp.makeConstraints { make in
            make.top.right.left.bottom.equalToSuperview()
        }
        
        photoImage.snp.makeConstraints { make in
            make.top.right.left.equalToSuperview()
            make.bottom.equalTo(contentView).offset(-25)
        }
    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//
//    }
}

