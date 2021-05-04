//
//  ContentView.swift
//  RegistrationForm
//
//  Created by usuario on 03-05-21.
//

import SwiftUI

struct ContentView: View {
    @State var firstName = ""
    @State var secondName = ""
    @State var lastName  = ""
    @State var lastName2 = ""
    @State var password = ""
    @State var passwordAgain = ""
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Section {
                        TextField(
                            RegistrationFormConstants.RegistrationForm.primerNombre,
                            text: $firstName)
                        TextField(RegistrationFormConstants.RegistrationForm.segundoNombre, text: $secondName)
                        TextField(RegistrationFormConstants.RegistrationForm.apellidoPaterno, text: $lastName)
                        TextField(RegistrationFormConstants.RegistrationForm.apellidoMaterno, text: $lastName2)
                        
                    }
                    Section(header: Text(RegistrationFormConstants.RegistrationForm.headerSectionPassword)) {
                        SecureField(
                            RegistrationFormConstants.RegistrationForm.securePassword,
                            text: $password)
                        SecureField(
                            RegistrationFormConstants.RegistrationForm.confirmPassword, text: $passwordAgain)
                        
                    }
                    
                }
                Button(action: {
                    // hacer algo con la data del usuario...
                }, label: {
                    Text("Continuar")
                      .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }).padding()
                
            }.navigationTitle("Crear Cuenta")
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
