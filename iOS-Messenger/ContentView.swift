//
//  ContentView.swift
//  iOS-Messenger
//
//  Created by Jonathan Zopf on 25.02.24.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var messageBubbleStates: [MessageBubbleState] = []
    var body: some View {
        VStack {
            ScrollView {
                ForEach(messageBubbleStates, id: \.self) { item in
                    MessageBubbleView(state: item)
                }
                    }
            Spacer()
            HStack {
                TextField("Enter text", text: $textInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: {
                    messageBubbleStates.append(MessageBubbleState(text: textInput, isFromUser: true))
                    textInput = ""
                }) {
                    Image(systemName: "arrow.up")
                        .padding(8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(1000)
                }
            }.padding(8)
        }
    }
}

#Preview {
    ContentView()
}
