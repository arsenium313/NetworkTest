//
//  UIButton +CreateButton.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

extension UIButton {
    class func createButton(title: String, color: UIColor, action: Selector) -> UIButton {
        let button = UIButton()
        button.configuration?.title = title
        button.configuration?.baseBackgroundColor = color
        button.configuration?.cornerStyle = .medium
        button.addTarget(nil, action: action, for: .touchUpInside)
        return button
    }
}
