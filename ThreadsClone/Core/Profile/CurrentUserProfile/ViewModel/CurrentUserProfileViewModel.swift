//
//  ProfileViewModel.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 14/08/24.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellabels = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
        }.store(in: &cancellabels)
    }
}
