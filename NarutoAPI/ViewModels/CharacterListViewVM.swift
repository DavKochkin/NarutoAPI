//
//  CharacterListViewVM.swift
//  NarutoAPI
//
//  Created by David Kochkin on 20.07.2024.
//

import Foundation

struct CharacterListViewVM  {
    func fetchCharacters() {
        Service.shared.execute(.listCharactersRequests,
                               expecting: GetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total pages: "+String(model.currentPage))
                print("Total page size: "+String(model.pageSize))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
