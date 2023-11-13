//
//  SearchUIKitViewController.swift
//  AppleMusicSwiftUI
//
//  Created by i0240 on 13.11.2023.
//

import UIKit
import SwiftUI

struct SearchUIKitView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let searchViewController = UINavigationController(rootViewController: SearchUIKitViewController())

        return searchViewController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

class SearchUIKitViewController: UIViewController {

    private var items = SearchCategoryItems.items

    // MARK: - Outlets

    private var searchCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    private var searchController: UISearchController = {
        let search = UISearchController()
        search.searchBar.placeholder = "Artists, Songs, Lyrics and More"
        return search
    }()


    // MARK: - Lifestyle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        registerCells()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setup() {
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = searchController
    }

    private func registerCells() {
        searchCollectionView.delegate = self
        searchCollectionView.dataSource = self

        searchCollectionView.register(
            SearchCell.self,
            forCellWithReuseIdentifier: "cell"
        )
        searchCollectionView.register(
            SearchHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "header"
        )
    }

    private func setupHierarchy() {
        view.addSubview(searchCollectionView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            searchCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            searchCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - UICollectionViewDataSource, UICollectionViewDelegate

extension SearchUIKitViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        items.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "cell",
            for: indexPath
        ) as? SearchCell
        cell?.render(image: items[indexPath.row].image)
        return cell ?? UICollectionViewCell()
    }

    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: "header",
            for: indexPath
        ) as? SearchHeader
        header?.render(title: "Поиск по категориям")
        return header ?? UICollectionReusableView()
    }
}

// MARK: -

extension SearchUIKitViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        CGSize(width: (view.frame.width / 2) - 20, height: (view.frame.height / 5) - 20)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        referenceSizeForHeaderInSection section: Int
    ) -> CGSize {
        CGSize(width: view.frame.width, height: 40)
    }
}
