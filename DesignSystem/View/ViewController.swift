//
//  ViewController.swift
//  DesignSystem
//
//  Created by Булат Сагдиев on 09.02.2022.
//

import UIKit

class ViewController: UIViewController {

    lazy var mainView = MainView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "background")
        setupHierarchy()
        setupConstraints()
    }

    // MARK: - Hierarchy
    func setupHierarchy() {
        view.addSubview(mainView)
    }

    // MARK: - layouts
    func setupConstraints() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 2)
        ])
    }
}
