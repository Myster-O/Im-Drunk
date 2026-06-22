//
//  SendMessage.swift
//  I'm Drunk
//
//  Created by Toope Oladunjoye on 6/22/26.
//

import SwiftUI

struct SendMessage {
    var contacts: [String] = []
    var message: String = ""
    
    func send() {
        guard let encodedMessage = message.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
                return
            }
        
        for num in contacts {
            if let send = URL(string: "sms:\(num)&body=\(encodedMessage)") {
                UIApplication.shared.open(send)
            }
        }
    }
}
