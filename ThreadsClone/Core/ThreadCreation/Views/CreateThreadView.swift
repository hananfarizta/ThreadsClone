//
//  CreateThreadView.swift
//  ThreadsClone
//
//  Created by Hanan Farizta on 13/08/24.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
//    private var user: User? {
//        return UserService.shared.currentUser
//    }
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImageView(user: nil, size: .small)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("cristiano")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                    }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
