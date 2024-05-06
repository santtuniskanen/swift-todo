//
//  Todo.swift
//  TodoApplication
//
//  Created by santtuniskanen on 5.5.2024.
//

import Foundation

enum TodoStatus: String {
    case pending
    case completed
}

struct Todo: Identifiable, Hashable {
    let id: Int
    let title: String
    let date: Date
    let status: TodoStatus
}

func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    components.minute = minute
    components.timeZone = TimeZone.current
    let calendar = Calendar.current
    return calendar.date(from: components)!
}

// Sample data
let todos: [Todo] = [
    Todo(id: 1, title: "Buy groceries", date: createDate(year: 2023, month: 7, day: 20, hour: 9, minute: 0), status: .pending),
    Todo(id: 2, title: "Finish homework", date: createDate(year: 2023, month: 7, day: 21, hour: 15, minute: 30), status: .pending),
    Todo(id: 3, title: "Call mom", date: createDate(year: 2023, month: 7, day: 22, hour: 12, minute: 0), status: .pending),
]
