//
//  Day9.swift
//  Swift15
//
//  Created by V̅onveron on 12-12-2025.
//

import SwiftUI

struct Note: Identifiable, Codable {
    let id: UUID
    var title: String
    var content: String
}

struct NoteDetailView: View {
    @Binding var note: Note

        var body: some View {
            TextEditor(text: $note.content)
                .padding()
                .navigationTitle(note.title)
        }
    
}

struct Day9: View {
        
    @State private var note: [Note] = [Note(id: UUID(), title: "First Note Test", content: "World") ]
    
    var body: some View {
        NavigationStack {
            List($note)  { note in
                NavigationLink(note.title) {
                    NoteDetailView(note: $note)
                }
                TextEditor(text: $note.content)
                    .padding()
                    .navigationTitle(note.title)
            }
        }
    }
}

#Preview {
    Day9()
}
