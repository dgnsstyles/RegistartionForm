//
//  ContentView.swift
//  RegistrationForm
//
//  Created by usuario on 03-05-21.
//

import SwiftUI

struct ContentView: View {
    @State var firstName = ""
    @State var lastName  = ""
    @State var password = ""
    @State var passwordAgain = ""
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Section {
                        TextField("Primer Nombre", text: $firstName)
                        TextField("Apellido", text: $lastName)
                    }
                    Section(footer: Text("Tu Contraseña debe tener minimo 8 caracteres")) {
                        SecureField("Escribe tu Contraseña", text: $password)
                        SecureField("Confirma tu contraseña", text: $passwordAgain)
                        
                    }
                  
                }
                Button(action: {
                    // hacer algo con la data del usuario...
                }, label: {
                    Text("Continuar")
                        .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
