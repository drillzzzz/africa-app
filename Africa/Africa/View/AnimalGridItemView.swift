//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Drilon Gigollaj on 08.02.2024..
//

import SwiftUI

struct AnimalGridItemView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
//MARK: - PREVIEW

let animalsgiv: [Animal] = Bundle.main.decode("animals.json")

#Preview {
    AnimalGridItemView(animal: animalsgiv[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
