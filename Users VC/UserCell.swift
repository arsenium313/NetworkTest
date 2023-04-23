//
//  UserCell.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 23.04.2023.
//

import UIKit

class UserCell: UITableViewCell {

    //MARK: Properties
    static let id = "UserCellIdentifier"

    var name = "" {
        willSet {
            nameLabel?.text = newValue
        }
    }
    
    var email = "" {
        willSet {
            emailLabel?.text = newValue
        }
    }
    
    private var nameLabel: UILabel! = nil
    private var emailLabel: UILabel! = nil
    
    private lazy var guide = contentView.layoutMarginsGuide
    
    //MARK: - SetupUI
    func setupUI(){
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        configureNameLabel()
        configureEmailLabel()
    }
    
    private func configureNameLabel() {
        nameLabel = UILabel()
        nameLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        contentView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            nameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.45)
        ])
    }
    
    private func configureEmailLabel() {
        emailLabel = UILabel()
        emailLabel.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        contentView.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 5),
            emailLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor)
        ])
    }
}
