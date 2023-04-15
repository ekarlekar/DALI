//
//  ContentView.swift
//  DALI
//
//  Created by Esha Karlekar on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var prompt: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter prompt", text: $prompt, axis: .vertical)
                .textFieldStyle(.roundedBorder)
            
            Button("Generate") {
            }
            .buttonStyle(.borderedProminent)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 256, height: 256)
                .overlay {
                    VStack {
                        ProgressView()
                        
                        Text("Loading...")
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
