//
//  SignInScreenView.swift
//  LoginAndSignup
//
//  Created by Saanvi Shingarwad on 15/10/21.
//

import SwiftUI

struct SignInScreenView: View {
    
    @State private var mobileNumber: String = ""
    var body: some View {
        ZStack {
            Color(.systemYellow).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Image("man")
                        .resizable()
                        .frame(width: 250, height: 210, alignment: .center)
                        .padding(.bottom, 0)
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                      //  .padding(.top, -50)
                    SocialLoginButton(text: Text("Sign in with facebook"), image: Image("facebook"))
                        .foregroundColor(.black)
                    SocialLoginButton(text: Text("Sign in with google"), image: Image("google"))
                        .foregroundColor(.black)
                    
                    
                    Text("or enter through mobile number")
                        .foregroundColor(Color.black.opacity(0.4))
                        .padding(.top, 10)
                    
                    TextField("Mobile Number", text: $mobileNumber)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: .gray, radius: 50, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Send OTP")
                }
                Spacer()
                Divider()
                Text("Read our terms and conditions")
                    .foregroundColor(.blue)
                    .padding(.bottom, 100)
            }
            .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}


struct SocialLoginButton: View {
    var text: Text
    var image: Image
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .cornerRadius(50.0)
        .shadow(color: Color.gray, radius: 60, x: 2, y: 5)
    }
}
