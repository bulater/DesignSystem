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
        setupFonts()
        setupTextColor()
        contentFilling()
    }
    
    //    MARK: - Hierarchy
    func setupHierarchy() {
        view.addSubview(mainView)
    }
    
    //    MARK: - layouts
    func setupConstraints() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 2)
        ])
    }
    
    //    MARK: - Text
    func setupFonts() {
        mainView.titleLabel.font = TextStyle.display1.font
        mainView.placeName.font = TextStyle.display2.font
        mainView.placeLocation.font = TextStyle.titleThin.font
        mainView.placeInformationTitle.font = TextStyle.title.font
        mainView.placeInformationDescription.font = TextStyle.regular.font
    }
    
    func setupTextColor() {
        mainView.placeName.textColor = UIColor(color: .display2)
        mainView.placeLocation.textColor = UIColor(color: .thin)
        mainView.placeInformationDescription.textColor = UIColor(color: .regular)
        mainView.titleLabel.textColor = UIColor(color: .display1)
        mainView.addToFavoriteButton.tintColor = UIColor(color: .action)
    }
    
    //    MARK: - Content
    func contentFilling() {
        mainView.backgroundImage.image = UIImage(named: "LA")
        mainView.placeName.text = "Los Angeles"
        mainView.placeLocation.text = "US, California"
        mainView.placeInformationDescription.text = "The City of Los Angeles lies in a basin in Southern California, adjacent to the Pacific Ocean, and extends through the Santa Monica Mountains and into the San Fernando Valley, covering a total of about 469 square miles (1,210 km2). It is the seat of Los Angeles County, which is the most populous county in the United States."
    }
}

