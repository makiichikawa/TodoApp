//
//  ListLow.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/12.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var body: some View {
        HStack {
            Text("⬜️")
            Text(task)
        }
    }
}

#Preview {
    ListRow(task: "料理")
}
