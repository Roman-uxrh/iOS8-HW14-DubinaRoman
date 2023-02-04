//
//  Cell.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 04.02.2023.
//

import UIKit

class CompositionalCell: UICollectionViewCell {
    
    static let id = "CompositionalCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

