//
//  ContentView.swift
//  I'm Drunk
//
//  Created by Toope Oladunjoye on 6/22/26.
//

import SwiftUI

struct ContentView: View {
    @Binding var trustedContact: [String]
    var body: some View {
        VStack(spacing: 15) {
            // "I'm Drunk" Button
            ZStack {
                Circle()
                    .fill(.yellow)
                    .frame(width: 150, height: 150)
                Text("I'm Drunk")
                    .foregroundStyle(.white)
                    .font(.title.bold())
            }
                .onLongPressGesture(minimumDuration: 1.2, perform: {
                    SendMessage(contacts: trustedContact, message: "Hi, I wanted to let you know that I am currently drunk. I may say or do somethings that I don't mean. I may need a ride or someone to talk to. Thank you!").send()
                })
            // "Going to get drunk" Button
            Text("I am about to get drunk")
                .onTapGesture(perform: {
                    SendMessage(contacts: trustedContact, message: "Hey, I wanted to let you know that I may be about to get drunk. I soon may say or do somethings that I don't mean. I may also need a ride or someone to talk to. Thank you!").send()
                })
        }
        .padding()
    }
}

