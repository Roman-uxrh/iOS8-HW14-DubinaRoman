//
//  SecondCompositionalCell.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import UIKit

class VerticalCell: UICollectionViewCell {
    
    static let id = "VerticalCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

