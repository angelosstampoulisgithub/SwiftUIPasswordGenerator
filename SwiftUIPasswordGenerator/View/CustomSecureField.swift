//
//  CustomSecureField.swift
//  SwiftUIPasswordGenerator
//
//  Created by Angelos Staboulis on 24/5/25.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var passwordText:String
    @Binding var showPassword:Bool
    var body: some View {
        if self.showPassword {
            TextField("Password", text: $passwordText)
                .font(.system(size: 15, weight: .regular, design: .default))
                .keyboardType(.default)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 60, alignment: .center)
        } else {
            SecureField("Password", text: $passwordText)
                .font(.system(size: 15, weight: .regular, design: .default))
                .keyboardType(.default)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 60, alignment: .center)
        }
    }
}

#Preview {
    CustomSecureField(passwordText: .constant(""), showPassword: .constant(false))
}
