//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Drilon Gigollaj on 06.02.2024..
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VSTACK
        }//: HSTACK
    }
}

//MARK: - PREVIEW

let animalsliv: [Animal] = Bundle.main.decode("animals.json")

#Preview {
    AnimalListItemView(animal: animalsliv[1])
        .previewLayout(.sizeThatFits)
        .padding()
}
