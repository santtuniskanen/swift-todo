//
//  TodoDetailView.swift
//  TodoApplication
//
//  Created by santtuniskanen on 5.5.2024.
//

import SwiftUI

struct TodoDetailView: View {
    
    var todo: Todo
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(todo.title)
                        .font(.title)
                    Text(formatDate(todo.date))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    StatusIndicator(status: todo.status)
                }
                .frame(width: geometry.size.width, alignment: .topLeading)
                .padding()
                .navigationBarTitle("Todo Details")
                Spacer()
            }
        }
    }
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    TodoDetailView(todo: Todo(id: 1, title: "Buy groceries", date: createDate(year: 2023, month: 7, day: 20, hour: 9, minute: 0), status: .pending))
}
