//
//  CharacterListCoordinator.swift
//  GetSchwifty
//
//  Created by Jan Čarnogurský on 05.07.2022.
//

import Foundation


class CharacterListCoordinator: ObservableObject {
    
    @Published var characterDetailViewModel: CharacterDetailViewModel?
    @Published var viewModel: CharacterListViewModel!
    
    
    private unowned let parent: HomeCoordinator
    
    
    init(parent: HomeCoordinator) {
        self.parent = parent
        
        self.viewModel = .init(coordinator: self)
    }
    
    func open(_ character: Character) {
        self.characterDetailViewModel = .init(character: character, coordinator: self)
    }
}