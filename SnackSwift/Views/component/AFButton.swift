//
//  AFButton.swift
//  SnackSwift
//
//  Created by Mayank Raj on 2024-01-20.
//

import SwiftUI

struct AFButton: View {
    var text: String
    var body: some View {
        Text(text).padding().foregroundStyle(.white).frame(width: 230).background(.orange).clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    AFButton(text: "Place order")
}

