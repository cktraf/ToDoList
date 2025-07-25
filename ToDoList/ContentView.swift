//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    
    @State private var showNewTask = false
    
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack(alignment: .center) {
            HStack() {
                Text("To-do List")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                }/*button */ label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .tint(.black)
                }//button label
            }//HStack
            .padding()
            Spacer()
            
            List {
                    ForEach(toDos) { toDoItem in
                        Text(toDoItem.title)
                    }//for each
            }//list
            
        }//VStack
        if showNewTask {
            NewToDoView()
        }
    }//body
}//struct

#Preview {
    ContentView()
}
