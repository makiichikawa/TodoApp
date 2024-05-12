//
//  ContentView.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/11.
//

import SwiftUI

struct ContentView: View {
    var userData = UserData()
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    ListRow(task: task.title, isCheck: task.checked)
                }
                Text("+").font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Text("Delete"))
        }
    }
}

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool

    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}

#Preview {
    ContentView()
}
