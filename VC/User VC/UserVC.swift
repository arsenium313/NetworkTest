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
    private var userInfoTextView: UITextView! = nil
    
    private let albumButton = UIButton.createButton(title: "Album", color: #colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1), action: #selector(goToAlbumVC))
    private let todoButton = UIButton.createButton(title: "ToDo", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), action: #selector(goToToDoVC))
    private let postButton = UIButton.createButton(title: "Post", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), action: #selector(goToPost))

    private let user: User
    
    private lazy var guide = self.view.layoutMarginsGuide
    
    //MARK: - Init
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        setupUI()
    }
    
    //MARK: - SetupUI
    private func setupUI() {
        configureButtonsStackView()
        configureUserInfoTextView()
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
    
    private func configureUserInfoTextView() {
        userInfoTextView = UITextView()
        self.view.addSubview(userInfoTextView)
        userInfoTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userInfoTextView.topAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 20),
            userInfoTextView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            userInfoTextView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            userInfoTextView.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
        
        userInfoTextView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        userInfoTextView.text = user.createText()

        userInfoTextView.isEditable = false
        userInfoTextView.font = UIFont.systemFont(ofSize: 25)
        
    }
    
    
    
    //MARK: - @objc
    @objc
    private func goToAlbumVC() {
        print("Go To Album")
    }

    @objc
    private func goToToDoVC() {
        print("Go To Todo")
        navigationController?.pushViewController(ToDoTableVC(), animated: true)
    }
    
    @objc
    private func goToPost() {
        print("Go To Post")
        navigationController?.pushViewController(PostTableVC(), animated: true)
    }
}
