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
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .systemGray
        return label
    }()
    
    lazy var photoImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 6
        return image
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .equalCentering
        stack.backgroundColor = .white
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
        backgroundColor = .white
    }
    
    private func setupHierarchy() {
        addSubview(stack)
        stack.addArrangedSubview(photoImage)
        addSubview(firstLabel)
        addSubview(secondLabel)
    }
    
    private func setupLayout() {
        stack.snp.makeConstraints { make in
            make.right.left.bottom.equalToSuperview().inset(15)
            make.top.equalToSuperview()
            make.left.equalToSuperview()
        }
        
        photoImage.snp.makeConstraints { make in
            make.top.right.left.equalToSuperview()
            make.bottom.equalTo(contentView).offset(-25)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.bottom.equalToSuperview().inset(10)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalTo(firstLabel.snp.bottom)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.model = nil
    }
}

