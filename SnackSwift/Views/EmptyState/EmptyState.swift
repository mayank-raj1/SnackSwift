//
//  EmptyState.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-20.
//

import SwiftUI

struct EmptyState: View {
    var message: String
    var body: some View {
        ZStack{
            Color(.systemBackground).ignoresSafeArea(.all)
            VStack{
                Image("empty-order").resizable().scaledToFit().frame(width: 250)
                Text(message)
                    .font(.title2).fontWeight(.semibold).multilineTextAlignment(.center).foregroundStyle(.secondary).padding()
            }
        }
    }
}

#Preview {
    EmptyState(message: "default Message")
}
