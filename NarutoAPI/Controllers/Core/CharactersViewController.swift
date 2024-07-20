//
//  CharactersViewController.swift
//  NarutoAPI
//
//  Created by David Kochkin on 07.07.2024.
//

import UIKit

/// Controller to show and search for characters
class CharactersViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        Service.shared.execute(.listCharactersRequests,
                               expecting: String.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    
}
