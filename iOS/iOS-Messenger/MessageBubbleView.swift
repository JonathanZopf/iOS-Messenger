//
//  MessageBubble.swift
//  iOS-Messenger
//
//  Created by Jonathan Zopf on 25.02.24.
//

import SwiftUI
struct MessageBubbleView: View {
    var state: MessageBubbleState
    
    init(state: MessageBubbleState) {
        self.state = state
    }
    
    var body: some View {
        HStack {
            if state.isFromUser {
                Spacer()
            }
            
            Text(state.text)
                .contentMargins(8)
                .foregroundColor(.white)
                .background(state.isFromUser ? Color.blue : Color.gray)
                .cornerRadius(8)
        
            
            if !state.isFromUser {
                Spacer()
            }
        }
    }
}
