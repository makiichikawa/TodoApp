//
//  ListLow.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/12.
//

import SwiftUI

struct ListRow: View {
    let task: String
    var isCheck: Bool
    var body: some View {
        HStack {
            if isCheck {
                Text("☑️")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text("⬜️")
                Text(task)
            }
        }
    }
}

#Preview {
    ListRow(task: "料理", isCheck: true)
}
