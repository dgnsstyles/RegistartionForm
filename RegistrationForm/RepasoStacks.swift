//
//  RepasoStacks.swift
//  RegistrationForm
//
//  Created by usuario on 03-05-21.
//

import SwiftUI

struct RepasoStacks: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                Circle()
            }
            Divider()
            HStack {
                Circle()
                Circle()
            }
            ZStack {
                HStack {
                    Circle()
                    Circle()
                }
            }
        
        
           
        }
    }
}

struct RepasoStacks_Previews: PreviewProvider {
    static var previews: some View {
        RepasoStacks()
    }
}
