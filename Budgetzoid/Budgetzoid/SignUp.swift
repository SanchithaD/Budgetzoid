//
//  SignUp.swift
//  Budgetzoid
//
//  Created by Sanchitha Dinesh on 2/22/20.
//  Copyright © 2020 Sanchitha. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    @State var name: String = ""
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.bold)
            Form {
            Section(header:Text("Enter in first name and last name. ").font(.subheadline)) {
            
                TextField("Name", text: $name)
                }
            Section(header:Text("Enter in your credit card information").font(.subheadline)) {
            
                TextField("Credit Card Number", text: $name)
                }
            Section(header:Text("Enter in your password.").font(.subheadline)) {
                      SecureField("Password", text: $name)
                      }
                Section(header:Text("Enter in your email.").font(.subheadline)) {
                TextField("Email", text: $name)
                }
                Section(header:Text("Enter in your phone number.").font(.subheadline)) {
                SecureField("Phone Number ", text: $name)
                }

            }
        }
        }
    }


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}

struct NameTextField: View {
    @Binding var name: String
    var body: some View {
        TextField("Name", text: $name)
    }
}
