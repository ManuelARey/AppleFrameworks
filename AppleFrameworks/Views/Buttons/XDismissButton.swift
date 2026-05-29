//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Manuel Alejandro Rey Cruz on 29/05/26.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
