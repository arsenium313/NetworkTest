//
//  UserVC.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class UserVC: UIViewController {

    //MARK: Properties
    private var buttonsStackView: UIStackView! = nil
    
    private let albumButton = UIButton.createButton(title: "Album", color: #colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1), action: #selector(goToAlbumVC))
    private let todoButton = UIButton.createButton(title: "ToDo", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), action: #selector(goToToDoVC))
    private let postButton = UIButton.createButton(title: "Post", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), action: #selector(goToPost))

    private lazy var guide = self.view.layoutMarginsGuide
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        setupUI()
    }
    
    //MARK: - SetupUI
    private func setupUI() {
        configureButtonsStackView()

    }
    
    private func configureButtonsStackView() {
        let arrangedButtons = [albumButton, todoButton, postButton]
        buttonsStackView = UIStackView(arrangedSubviews: arrangedButtons)
        self.view.addSubview(buttonsStackView)
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            buttonsStackView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            buttonsStackView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            buttonsStackView.topAnchor.constraint(equalTo: guide.topAnchor),
            buttonsStackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.10)
        ])
        
        buttonsStackView.axis = .horizontal
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.alignment = .fill
        buttonsStackView.spacing = 5
        buttonsStackView.backgroundColor = .white
    }
    
    
    //MARK: - @objc
    @objc
    private func goToAlbumVC() {
        print("Go To Album")
    }

    @objc
    private func goToToDoVC() {
        print("Go To Todo")
    }
    
    @objc
    private func goToPost() {
        print("Go To Post")
    }
}
