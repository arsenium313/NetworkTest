//
//  UserCell.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 23.04.2023.
//

import UIKit

class UserTableCell: UITableViewCell {

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
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 5, bottom: 0, right: 5))
    }
    
    func setupUI(){
        configureSelf()
        configureNameLabel()
        configureEmailLabel()
    }
    
    private func configureSelf() {
        contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        self.selectionStyle = .none
    }
    
    private func configureNameLabel() {
        nameLabel = UILabel()
        contentView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            nameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.45)
        ])
    }
    
    private func configureEmailLabel() {
        emailLabel = UILabel()
        contentView.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 5),
            emailLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            emailLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            emailLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor)
        ])
    }
}
