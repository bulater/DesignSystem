//
//  MainView.swift
//  DesignSystem
//
//  Created by Булат Сагдиев on 09.02.2022.
//

import UIKit

class MainView: UIView {

    lazy var backgroundImage: UIImageView = { MainView.makeBackgroundImageView() }()
    lazy var placeName: UILabel = { MainView.makePlaceNameLabel() }()
    lazy var placeLocation: UILabel = { MainView.makePlaceLocationLabel() }()
    lazy var placeInformationTitle: UILabel = { MainView.makePlaceInformationTitleLabel() }()
    lazy var placeInformationDescription: UILabel = { MainView.makePlaceInformationDescriptionLabel() }()
    lazy var separator: UIView = { MainView.makeSeparatorView() }()
    lazy var titleLabel: UILabel = { MainView.makeTitleLabel() }()
    lazy var addToFavoriteButton: UIButton = { MainView.makeAddToFavoriteButton() }()
    lazy var placeDescriptionInfoStackView: UIStackView = { makePlaceDescriptionInfoStackView() }()
    lazy var placeNameInfoStackView: UIStackView = { makePlaceNameInfoStackView() }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupBackgroundImageConstraints()
        setupSeparatorConstraints()
        setupTitleLabelConstraints()
        setupAddToFavoriteButtonConstraints()
        setupPlaceDescriptionInfoStackViewConstraints()
        setupPlaceNameInfoStackViewConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Creating Subviews

    static func makeBackgroundImageView() -> UIImageView {
        let view = UIImageView()
        view.image = UIImage(named: "LA")
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }
    static func makePlaceNameLabel() -> UILabel {
        let label = UILabel()
        label.font = TextStyle.display2.font
        label.textColor = UIColor(color: .display2)
        label.text = "Los Angeles"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    static func makePlaceLocationLabel() -> UILabel {
        let label = UILabel()
        label.font = TextStyle.titleThin.font
        label.textColor = UIColor(color: .thin)
        label.text = "US, California"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    static func makePlaceInformationTitleLabel() -> UILabel {
        let label = UILabel()
        label.text = "Information"
        label.font = TextStyle.title.font
        label.textColor = UIColor(color: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    static func makePlaceInformationDescriptionLabel() -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = TextStyle.regular.font
        label.text = "The City of Los Angeles "
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    static func makeSeparatorView() -> UIView {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }

    static func makeTitleLabel() -> UILabel {
        let label = UILabel()
        label.text = "Los Angeles"
        label.font = TextStyle.display1.font
        label.textColor = UIColor(color: .display1)
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }

    static func makeAddToFavoriteButton() -> UIButton {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 25
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.tintColor = UIColor(color: .action)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }

    func makePlaceDescriptionInfoStackView() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [placeInformationTitle, placeInformationDescription])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
    }

    func makePlaceNameInfoStackView() -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [placeName, placeLocation])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 7
        stackView.translatesAutoresizingMaskIntoConstraints = false

        return stackView
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

    private func setupBackgroundImageConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    private func setupSeparatorConstraints() {
        NSLayoutConstraint.activate([
            separator.topAnchor.constraint(equalTo: placeNameInfoStackView.bottomAnchor, constant: 10),
            separator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            separator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
            separator.heightAnchor.constraint(equalToConstant: 0.5)
        ])

    }

    private func setupTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20)
        ])
    }

    private func setupAddToFavoriteButtonConstraints() {
        NSLayoutConstraint.activate([
            addToFavoriteButton.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -25),
            addToFavoriteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            addToFavoriteButton.heightAnchor.constraint(equalToConstant: 50),
            addToFavoriteButton.widthAnchor.constraint(equalToConstant: 50)
        ])

    }

    private func setupPlaceDescriptionInfoStackViewConstraints() {
        NSLayoutConstraint.activate([
            placeDescriptionInfoStackView.topAnchor.constraint(equalTo: placeNameInfoStackView.bottomAnchor, constant: 100),
            placeDescriptionInfoStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            placeDescriptionInfoStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])

    }

    private func setupPlaceNameInfoStackViewConstraints() {
        NSLayoutConstraint.activate([
            placeNameInfoStackView.topAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: 10),
            placeNameInfoStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            placeNameInfoStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20)
        ])
    }
}
