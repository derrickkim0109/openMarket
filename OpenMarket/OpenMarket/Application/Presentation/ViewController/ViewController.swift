//
//  OpenMarket - ViewController.swift
//  Created by 케이, 수꿍. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@available(iOS 14.0, *)
class ViewController: UIViewController {
    enum Section {
        case main
    }
    
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>! = nil
    private var collectionView: UICollectionView! = nil
    private let mySegmentedControl = UISegmentedControl(items: ["List","Grid"])
    
    private let networkProvider = NetworkProvider()
    private var productsModel: [Item] = []
    
    private var isSelected: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        networkProvider.requestAndDecode(url: "https://market-training.yagom-academy.kr/api/products?page_no=1&items_per_page=10", dataType: ProductList.self) { result in
            switch result {
            case .success(let productList):
                productList.pages.forEach { product in
                    let item = Item(imageName: product.thumbnailImage!, productName: product.name, originPrice: product.price, bargainPrice: product.bargainPrice, stock: product.stock)
                    self.productsModel.append(item)
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.configureSegmentedControl()
                        self?.configureHierarchy()
                        self?.configureDataSource()
                        self?.collectionView.reloadData()
                    }
                }
            case .failure(_):
                break
            }
        }
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!) {
        let items = sender.selectedSegmentIndex
        
        switch items {
        case 0 :
            collectionView.setCollectionViewLayout(createListLayout(), animated: true)
            collectionView.visibleCells.forEach { cell in
                guard let cell = cell as? CustomCollectionViewCell else {
                    return
                }
            
                cell.contentView.layer.borderColor = .none
                cell.contentView.layer.borderWidth = 0
                cell.accessories = [.disclosureIndicator()]

                cell.configureStackView(of: .horizontal, textAlignment: .left)
            }
        case 1:
            collectionView.setCollectionViewLayout(createGridLayout(), animated: true)
            collectionView.visibleCells.forEach { cell in
                guard let cell = cell as? CustomCollectionViewCell else {
                    return
                }
                
                isSelected = true
                cell.accessories = [.delete()]
                cell.contentView.layer.borderColor = UIColor.black.cgColor
                cell.contentView.layer.borderWidth = 1
                
                cell.configureStackView(of: .vertical, textAlignment: .center)
            }
            
            collectionView.scrollToItem(at: IndexPath(item: -1, section: 0), at: .init(rawValue: 0), animated: false)
        default:
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

@available(iOS 14.0, *)
extension ViewController {
    /// - Tag: List
    private func createListLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
    
    /// - Tag: Inset
    private func createGridLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 4, leading: 8, bottom: 4, trailing: 8)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.8))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}

@available(iOS 14.0, *)
extension ViewController {
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createListLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        
        view.addSubview(collectionView)
    }
    
    func configureSegmentedControl() {
        let xPostion:CGFloat = 65
        let yPostion:CGFloat = 55
        let elementWidth:CGFloat = 300
        let elementHeight:CGFloat = 30
        
        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        
        // Make second segment selected
        mySegmentedControl.selectedSegmentIndex = 0
        
        //Change text color of UISegmentedControl
        mySegmentedControl.tintColor = UIColor.yellow
        
        //Change UISegmentedControl background colour
        mySegmentedControl.backgroundColor = UIColor.white
        
        mySegmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        
        self.navigationItem.titleView = mySegmentedControl
    }
    
    private func configureDataSource() {
        // initial data
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
 
        let cellListRegistration = UICollectionView.CellRegistration<CustomCollectionViewCell, Item> { (cell, indexPath, item) in
            cell.configure(item)
            
            if self.isSelected == false {
                cell.accessories = [.disclosureIndicator()]
            } else {
                cell.accessories = [.delete()]
            }
        }
    
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, identifier: Item) -> UICollectionViewCell? in
            
                return collectionView.dequeueConfiguredReusableCell(using: cellListRegistration, for: indexPath, item: identifier)
        }
        
        snapshot.appendItems(productsModel)
        
        dataSource.apply(snapshot, animatingDifferences: true)
    }
}

@available(iOS 14.0, *)
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

struct Item: Hashable {
    let id = UUID()
    
    let imageName: UIImage
    let productName: String
    let originPrice: Int
    let bargainPrice: Int
    let stock: Int
}
