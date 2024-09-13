//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 13/08/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
