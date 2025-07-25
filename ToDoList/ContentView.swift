//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack() {
                Text("To-do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()
                Button {
        
                }/*button */ label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .tint(.black)
                }//button label
            }//HStack
            .padding()
            Spacer()
        }//VStack
    }//body
}//struct

#Preview {
    ContentView()
}
