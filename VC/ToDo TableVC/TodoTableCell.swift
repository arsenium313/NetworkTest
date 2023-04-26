//
//  TodoTableCell.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class TodoTableCell: UITableViewCell {
    
    //MARK: Properties
    static let identifier = "ToDoCellId"
    private var titleLabel: UILabel! = nil
    private var completedSwitch: UISwitch! = nil
    
    var titleText: String = "" {
        willSet {
            titleLabel.text = newValue
        }
    }
    
    var isCompleted: Bool = false {
        willSet {
            completedSwitch.isOn = newValue
        }
    }
    
    lazy var guide = self.contentView.layoutMarginsGuide
    
    
    //MARK: - SetupUI
    func setupUI() {
        configureTitleLabel()
        configureCompletedSwitch()
    }
    
    private func configureTitleLabel() {
        titleLabel = UILabel()
        self.contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            titleLabel.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 0.75)
        ])
    }
    
    private func configureCompletedSwitch() {
        completedSwitch = UISwitch()
        self.contentView.addSubview(completedSwitch)
        completedSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            completedSwitch.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 10),
            completedSwitch.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            completedSwitch.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }
}
