//
//  CharacterListView.swift
//  NarutoAPI
//
//  Created by David Kochkin on 20.07.2024.
//

import UIKit

/// View that handles showing list of characters, loader, etc. 
final class CharacterListView: UIView {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
