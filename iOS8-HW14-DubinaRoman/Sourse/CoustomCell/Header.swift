//
//  Header.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 04.02.2023.
//

import UIKit

class Header: UICollectionReusableView {
    
    static let id = "Header"
    
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    private lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray4
        return line
    }()
    
    lazy var buttom: UIButton = {
        let button = UIButton()
        button.setTitle("Все", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 25
        button.backgroundColor = .white
        return button
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
        clipsToBounds = true
    }
    
    private func setupHierarchy() {
        addSubview(title)
        addSubview(line)
        addSubview(buttom)
    }
    
    private func setupLayout() {
        title.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.left.equalTo(self)
        }
        
        line.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.top.equalTo(title.snp.top).inset(-10)
            make.left.equalTo(self)
            make.right.equalToSuperview()
        }
        
        buttom.snp.makeConstraints { make in
            make.bottom.equalTo(self)
            make.right.equalToSuperview().inset(10)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
