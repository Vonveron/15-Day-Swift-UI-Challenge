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


struct Day9: View {
    
    @State private var note1: [Note] = [Note(id: UUID(), title: "First Note Test", content: "World") ]
    
    var body: some View {
        NavigationStack {
            List(note1)  { note1 in
                Text(note1.title)
            }
        }
    }
}
#Preview {
    Day9()
}
