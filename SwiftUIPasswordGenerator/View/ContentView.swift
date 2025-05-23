//
//  ContentView.swift
//  SwiftUIPasswordGenerator
//
//  Created by Angelos Staboulis on 23/5/25.
//

import SwiftUI

struct ContentView: View {
    let helper = Helper()
    @State var passwordText:String = ""
    @State var showPassword:Bool = false
    var body: some View {
            VStack {
                Color.gray.ignoresSafeArea().overlay {
                    ZStack{
                            Text("SwiftUI Generate Password")
                                .frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .top)
                    }
                    HStack{
                        Image(systemName: "lock.fill")
                            .foregroundColor(passwordText.isEmpty ? .secondary : .primary)
                            .font(.system(size: 18, weight: .medium, design: .default))
                            .frame(width: 18, height: 18, alignment: .center)
                        
                        CustomSecureField(passwordText: $passwordText, showPassword: $showPassword)
                        ShowPasswordView(showPassword: $showPassword)
                    }
                    .padding(.horizontal, 15)
                    .background(Color.primary.opacity(0.05).cornerRadius(10))
                    .padding(.horizontal, 15)
                    ZStack{
                        Button {
                            passwordText = helper.randomPassword(pwdLength: 8)
                        } label: {
                            Text("Generate Password")
                                .frame(width:300,height:65,alignment: .center)
                                .background(Color.orange)
                                .clipShape(Capsule())
                        }.frame(maxWidth:.infinity,maxHeight:.infinity,alignment: .bottom)
                    }

                }
                
            }
       
      
    }
   
}

#Preview {
    ContentView(passwordText: "", showPassword: false)
}
