//
//  PreviewProvider.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 14/08/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Cristiano Ronaldo", email: "cristiano@gmail.com", username: "cristiano")
}
