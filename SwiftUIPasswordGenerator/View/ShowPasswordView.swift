//
//  ShowPasswordView.swift
//  SwiftUIPasswordGenerator
//
//  Created by Angelos Staboulis on 24/5/25.
//

import SwiftUI

struct ShowPasswordView: View {
    @Binding var showPassword:Bool
    var body: some View {
        Button(action: {
            showPassword.toggle()
        }, label: {
            ZStack(alignment: .trailing){
                Color.clear
                    .frame(maxWidth: 29, maxHeight: 60, alignment: .center)
                Image(systemName: self.showPassword ? "eye.slash.fill" : "eye.fill")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color.init(red: 160.0/255.0, green: 160.0/255.0, blue: 160.0/255.0))
            }
        })
    }
}

#Preview {
    ShowPasswordView(showPassword: .constant(false))
}
