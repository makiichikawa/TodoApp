//
//  ContentView.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Text("⬜️")
                    Text("散歩")
                }
                HStack {
                    Text("⬜️")
                    Text("料理")
                }
                HStack {
                    Text("⬜️")
                    Text("筋トレ")
                }
                Text("+").font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

#Preview {
    ContentView()
}
