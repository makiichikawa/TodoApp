//
//  UserTask.swift
//  TodoApp
//
//  Created by 市川真希 on 2024/05/12.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var checked: Bool

    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
