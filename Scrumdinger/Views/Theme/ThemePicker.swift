//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Kristina Belova on 24.03.2023.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach (Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ThemePicker(selection: .constant(.periwinkle))
        }
    }
}
