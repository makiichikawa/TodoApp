//
//  ContentView.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userData = UserData()
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: { self.userData.tasks[0].checked.toggle() })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
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
