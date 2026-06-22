//
//  SetupView.swift
//  I'm Drunk
//
//  Created by Toope Oladunjoye on 6/22/26.
//

import SwiftUI

struct SetupView: View {
    @State private var newNumber = ""
    @Binding var trustedContact: [String]
    @Binding var setup: Bool
    var body: some View {
        VStack(spacing: 15) {
            Text("Add your trusted contacts")
                .font(.title)
            HStack {
                TextField("ex. +1 234-456-7890", text: $newNumber)
                    .keyboardType(.phonePad)
                    .textContentType(.telephoneNumber)
                    .textFieldStyle(.roundedBorder)
                Button("Add", systemImage: "plus") {
                    trustedContact.append(newNumber)
                }
                .buttonStyle(.bordered)
            }
            ForEach(trustedContact, id: \.self) {contact in
                Text(contact)
            }
            .onDelete {IndexSet in
                trustedContact.remove(atOffsets: IndexSet)
            }
            
            Button("Done", systemImage: "checkmark") {
                setup = false
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

