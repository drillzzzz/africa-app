//
//  InsetFactView.swift
//  Africa
//
//  Created by Drilon Gigollaj on 06.02.2024..
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }//: LOOP
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: BOX
    }
}

//MARK: - PREVIEW

let animalsifv: [Animal] = Bundle.main.decode("animals.json")

#Preview {
    InsetFactView(animal: animalsifv[0])
        .previewLayout(.sizeThatFits)
        .padding()
    
}
