//
//  InsertFackView.swift
//  Africa
//
//  Created by Baris Ciftci on 14/11/2022.
//

import SwiftUI

struct InsertFackView: View {
    // MARK: PROPERTIES
    let animal: Animal
    // MARK: BODY
    var body: some View {
        
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
            
        } //: BOX
    }
}
// MARK: PREVIEW

struct InsertFackView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertFackView(animal: animals[0])
    }
}
