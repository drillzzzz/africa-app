//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Drilon Gigollaj on 06.02.2024..
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                }
                .foregroundColor(.accentColor)
            }//: HSTACK
        }//: BOX
    }
}


//MARK: - PREVIEW
let animalsewv: [Animal] = Bundle.main.decode("animals.json")

#Preview {
    ExternalWeblinkView(animal: animalsewv[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
