//
//  ExploreViewModel.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 14/08/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUser()
    }
}
