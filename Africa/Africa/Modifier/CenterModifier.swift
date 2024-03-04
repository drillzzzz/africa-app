//
//  CenterModifier.swift
//  Africa
//
//  Created by Drilon Gigollaj on 09.02.2024..
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
    
}
