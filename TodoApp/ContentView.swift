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
                ListRow(task: "筋トレ")
                ListRow(task: "散歩")
                ListRow(task: "勉強")
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
