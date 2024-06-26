//
//  ListView.swift
//  TodoApplication
//
//  Created by santtuniskanen on 6.5.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(todos, id: \.self) { todo in
                    NavigationLink(destination: TodoDetailView(todo: todo)) {
                        HStack(alignment: .center) {
                            VStack(alignment: .leading) {
                                Text(todo.title)
                                    .font(.title3)
                                Text(formatDate(todo.date))
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            StatusIndicator(status: todo.status)
                        }
                    }
                }
            }
            .listStyle(.inset)
            .padding()
            .navigationTitle("Todo List")
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
    ListView()
}
