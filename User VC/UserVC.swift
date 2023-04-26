//
//  UserVC.swift
//  NetworkTest
//
//  Created by Арсений Кухарев on 26.04.2023.
//

import UIKit

class UserVC: UIViewController {

    //MARK: Properties
    let albumButton = UIButton.createButton(title: "Album", color: #colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1), action: #selector(goToAlbumVC))
    
    
    //MARK: - View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - @objc
    @objc
    private func goToAlbumVC() {
        
    }

}
