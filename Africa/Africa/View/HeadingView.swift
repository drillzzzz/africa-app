//
//  HeadingView.swift
//  Africa
//
//  Created by Drilon Gigollaj on 06.02.2024..
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    //MARK: - BODY
    
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//: HSTACK
        .padding(.vertical)
    }
}

//MARK: - PREVIEW

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wildeness in Pictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
