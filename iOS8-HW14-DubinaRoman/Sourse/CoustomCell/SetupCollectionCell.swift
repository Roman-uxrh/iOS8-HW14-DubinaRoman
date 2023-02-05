//
//  SetupCoustomCell.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import UIKit

extension ViewController {
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            
            switch sectionIndex {
                case 0:
                    // My Albums
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                          heightDimension: .fractionalWidth(1))
                    let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                    
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                                           heightDimension: .fractionalWidth(1))
                    let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: layoutItem, count: 2)
                    
                    let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                    sectionLayout.orthogonalScrollingBehavior = .paging
                    
                    let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.98),
                                                                         heightDimension: .estimated(40))
                    let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                                                                        layoutSize: layoutSectionHeaderSize,
                                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                                        alignment: .top)
                    
                    sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                    sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                          leading: 0,
                                                                          bottom: 20,
                                                                          trailing: 0)
                        return sectionLayout
                case 1:
                    // Shared Albums
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                                          heightDimension: .fractionalWidth(0.5))
                    let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                    
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                           heightDimension: .fractionalWidth(0.5))
                    let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: layoutItem, count: 1)
                    
                    let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                    sectionLayout.orthogonalScrollingBehavior = .paging
                    
                    let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.98),
                                                                         heightDimension: .estimated(40))
                    let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                                                                        layoutSize: layoutSectionHeaderSize,
                                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                                        alignment: .top)
                    
                    sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                    sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                          leading: 0,
                                                                          bottom: 20,
                                                                          trailing: 0)
                        return sectionLayout
                case 2:
                    // Media Types
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                          heightDimension: .absolute(44))
                    let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                    
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                           heightDimension: .fractionalHeight(0.5))
                    let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: layoutItem, count: 9)
                    
                    let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                    
                    let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.98),
                                                                        heightDimension: .estimated(40))
                    let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                                                                        layoutSize: layoutSectionHeaderSize,
                                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                                        alignment: .top)
                    
                    sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                    sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                          leading: 0,
                                                                          bottom: 20,
                                                                          trailing: 0)
                        return sectionLayout
                case 3:
                    // Utilites
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                          heightDimension: .absolute(44))
                    let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                    
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                           heightDimension: .fractionalHeight(0.2))
                    let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: layoutItem, count: 3)
                    
                    let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                    
                    let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.98),
                                                                        heightDimension: .estimated(40))
                    let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                                                                        layoutSize: layoutSectionHeaderSize,
                                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                                        alignment: .top)
                    
                    sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                    sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                          leading: 0,
                                                                          bottom: 20,
                                                                          trailing: 0)
                        return sectionLayout
                default:
                    let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                          heightDimension: .fractionalWidth(1))
                    let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                    layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                    
                    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                                           heightDimension: .fractionalWidth(1))
                    let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: layoutItem, count: 2)
                    
                    let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                    sectionLayout.orthogonalScrollingBehavior = .paging
                    
                    let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.98),
                                                                         heightDimension: .estimated(40))
                    let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                                                                        layoutSize: layoutSectionHeaderSize,
                                                                        elementKind: UICollectionView.elementKindSectionHeader,
                                                                        alignment: .top)
                    
                    sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                    sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0,
                                                                          leading: 0,
                                                                          bottom: 20,
                                                                          trailing: 0)
                        return sectionLayout
            }
        }
    }
}
