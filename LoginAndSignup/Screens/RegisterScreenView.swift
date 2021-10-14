//
//  RegisterScreenView.swift
//  LoginAndSignup
//
//  Created by Saanvi Shingarwad on 15/10/21.
//

import SwiftUI

struct RegisterScreenView: View {
 
    var body: some View {
        
        ZStack {
            Color(.systemYellow).edgesIgnoringSafeArea(.all)
            VStack {
              Image("lady")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding(.top, 10)
                
                Text("Sign up")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding(.bottom, 0)
                
                RegisterInputDataView()
                
                PrimaryButton(title: "Register")
                    .padding(.bottom, 40)
                    .padding()
            }
        }
    }
}

struct RegisterScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreenView()
    }
}

struct RegisterInputDataView: View {
    @State private var userName: String = ""
    var body: some View {
        VStack {
          
            TextField("enter username", text: $userName)
                .font(.title2)
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.black, lineWidth: 2))
                .padding()
          
            TextField("enter email", text: $userName)
                .font(.title2)
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.black, lineWidth: 2))
                .padding()
         
            TextField("enter mobile", text: $userName)
                .font(.title2)
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.black, lineWidth: 2))
                .padding()
        }
    }
}
