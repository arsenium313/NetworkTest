//
//  PostTableCell.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class PostTableCell: UITableViewCell {

    //MARK: Properties
    static let identifier = "PostTableCellID"
    private var titleLabel: UILabel! = nil
    private var bodyLabel: UILabel! = nil
    
    var titleText = "" {
        willSet {
            titleLabel.text = newValue
        }
    }
    
    var bodyText = "" {
        willSet {
            bodyLabel.text = newValue
        }
    }
    
    lazy var guide = self.contentView.layoutMarginsGuide
    
    
    //MARK: - SetupUI
    func setupUI() {
        configureTitleLabel()
        configureBodyLabel()
    }
    
    private func configureTitleLabel() {
        titleLabel = UILabel()
        self.contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.3)
        ])
    }
    
    private func configureBodyLabel() {
        bodyLabel = UILabel()
        self.contentView.addSubview(bodyLabel)
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            bodyLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            bodyLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            bodyLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
    }
}
