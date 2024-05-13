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
                    Button(action: {
                        guard let index = self.userData.tasks.firstIndex(of: task) else {
                            return
                        }
                        self.userData.tasks[index].checked.toggle() })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
                Text("+").font(.title)
            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            }){
                    Text("Delete")
                }
            )
        }
    }
    func DeleteTask() {
        let necessaryTask =
        self.userData.tasks.filter({!$0.checked})
        self.userData.tasks = necessaryTask
    }
}

#Preview {
    ContentView()
}
