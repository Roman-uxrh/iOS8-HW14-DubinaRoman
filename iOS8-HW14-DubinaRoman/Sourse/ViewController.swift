//
//  ViewController.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 04.02.2023.
//

import UIKit
import SnapKit

protocol ViewControllerProtocol: AnyObject {
    
}

class ViewController: UIViewController, ViewControllerProtocol {
    
    var presenter: Presenter?
    
    // MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(HorizontalCel.self, forCellWithReuseIdentifier: HorizontalCel.id)
        collectionView.register(VerticalCell.self, forCellWithReuseIdentifier: VerticalCell.id)
        collectionView.register(Header.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: Header.id)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHyerarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupHyerarchy() {
        view.addSubview(collectionView)

    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints { make in
            make.right.left.bottom.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

    // MARK: - Setup CollectionView

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        presenter?.model.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
            case 0:
                return presenter?.model[section].count ?? 0
            case 1:
                return presenter?.model[section].count ?? 0
            case 2:
                return presenter?.model[section].count ?? 0
            case 3:
                return presenter?.model[section].count ?? 0
            default:
                return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
            case 0, 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalCel.id, for: indexPath) as? HorizontalCel
                cell?.model = presenter?.model[indexPath.section][indexPath.item]
                return cell ?? HorizontalCel()
            case 2, 3:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalCell.id, for: indexPath) as? VerticalCell
                cell?.model = presenter?.model[indexPath.section][indexPath.item]
                return cell ?? VerticalCell()
            default:
                return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch indexPath.section {
            case 0:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Header.id, for: indexPath) as? Header
                header?.title.text = "Мои альбомы"
                return header ?? Header()
            case 1:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Header.id, for: indexPath) as? Header
                header?.title.text = "Общие альбомы"
                return header ?? Header()
            case 2:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Header.id, for: indexPath) as? Header
                header?.title.text = "Типы медиафайлов"
                header?.buttom.setTitleColor(.white, for: .normal)
                return header ?? Header()
            case 3:
                let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: Header.id, for: indexPath) as? Header
                header?.title.text = "Другое"
                header?.buttom.setTitleColor(.white, for: .normal)
                return header ?? Header()
            default:
                return UICollectionReusableView()
        }
    }
}

