//
//  WelcomeScreenView.swift
//  LoginAndSignup
//
//  Created by Saanvi Shingarwad on 14/10/21.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemYellow).edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("jumping")
                        .resizable()
                        .frame(width: 300, height: 250)
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SignInScreenView(),
                        label: {
                            Text("Sign in")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color(.black))
                                .cornerRadius(50)
                               
                        })
                        .navigationBarHidden(true)
                    HStack {
                        Text("New Here ?")
                        NavigationLink(
                            destination: RegisterScreenView(),
                            label: {
                                Text("Register")
                                    .foregroundColor(Color.blue)
                            })
                    }
                    .padding(.bottom, 30)
                    
                }.padding()
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
