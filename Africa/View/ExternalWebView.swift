//
//  ExternalWebView.swift
//  Africa
//
//  Created by Baris Ciftci on 14/11/2022.
//

import SwiftUI

struct ExternalWebView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
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
        } //: BOX
    }
    // MARK: PREVIEW
    
    struct ExternalWebView_Previews: PreviewProvider {
        static let animals: [Animal] = Bundle.main.decode("animals.json")
        static var previews: some View {
            ExternalWebView(animal: animals[0])
        }
    }
}
