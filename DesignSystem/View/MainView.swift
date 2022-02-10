//
//  MainView.swift
//  DesignSystem
//
//  Created by Булат Сагдиев on 09.02.2022.
//

import UIKit

class MainView: UIView {

    lazy var backgroundImage: UIImageView = {
    let view = UIImageView()
    return view
    }()
    
    lazy var placeName: UILabel = {
        let label = UILabel()
        return label
    }()

    lazy var placeLocation: UILabel = {
        let label = UILabel()
        return label
    }()

    lazy var placeInformationTitle: UILabel = {
        let label = UILabel()
        label.text = "Information"
        return label
    }()

    lazy var placeInformationDescription: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()

    lazy var separator: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Los Angeles"
        return label
    }()

    lazy var addToFavoriteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        return button
    }()

    lazy var placeDescriptionInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [placeInformationTitle, placeInformationDescription])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20
        return stackView
    }()

    lazy var placeNameInfoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [placeName, placeLocation])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 7
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// MARK: - Hierarchy
  func setupHierarchy() {
    addSubview(backgroundImage)
    addSubview(addToFavoriteButton)
    addSubview(placeNameInfoStackView)
    addSubview(placeDescriptionInfoStackView)
    addSubview(separator)
    addSubview(titleLabel)
    }

// MARK: - layouts
  func setupConstraints() {
    backgroundImage.translatesAutoresizingMaskIntoConstraints = false
    placeName.translatesAutoresizingMaskIntoConstraints = false
    placeLocation.translatesAutoresizingMaskIntoConstraints = false
    placeNameInfoStackView.translatesAutoresizingMaskIntoConstraints = false
    placeInformationTitle.translatesAutoresizingMaskIntoConstraints = false
    placeInformationDescription.translatesAutoresizingMaskIntoConstraints = false
    placeDescriptionInfoStackView.translatesAutoresizingMaskIntoConstraints = false
    addToFavoriteButton.translatesAutoresizingMaskIntoConstraints = false
    separator.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
    backgroundImage.topAnchor.constraint(equalTo: topAnchor),
    backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
    backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
    backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),

    placeNameInfoStackView.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: 10),
    placeNameInfoStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
    placeNameInfoStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20),

    separator.topAnchor.constraint(equalTo: placeNameInfoStackView.bottomAnchor, constant: 10),
    separator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
    separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
    separator.heightAnchor.constraint(equalToConstant: 0.5),

    placeDescriptionInfoStackView.topAnchor.constraint(equalTo: placeNameInfoStackView.bottomAnchor, constant: 100),
    placeDescriptionInfoStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
    placeDescriptionInfoStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

    addToFavoriteButton.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -25),
    addToFavoriteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
    addToFavoriteButton.heightAnchor.constraint(equalToConstant: 50),
    addToFavoriteButton.widthAnchor.constraint(equalToConstant: 50),

    titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
    titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
    titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20)
    ])
    }
}
