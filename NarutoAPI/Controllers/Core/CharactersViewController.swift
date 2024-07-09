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
        
        let request = Request(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "Naruto Uzumaki")]
        )
        print(request.url)
        
        Service.shared.execute(request,
                               expecting: Characters.self) { result  in
            
        }
    }
    
}
