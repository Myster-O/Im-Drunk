//
//  I_m_DrunkApp.swift
//  I'm Drunk
//
//  Created by Toope Oladunjoye on 6/22/26.
//

import SwiftUI

@main
struct I_m_DrunkApp: App {
    @State var trustedContact: [String] = []
    @State var setup: Bool = true
    var body: some Scene {
        WindowGroup {
            if setup {
                SetupView(trustedContact: $trustedContact, setup: $setup)
            } else {
                ContentView(trustedContact: $trustedContact)
            }
        }
    }
}
