//
//  InsentGalleryView.swift
//  Africa
//
//  Created by Baris Ciftci on 12/11/2022.
//

import SwiftUI

struct InsentGalleryView: View {
    // MARK: PROPERTIES
    let animal: Animal
    
    // MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
                
            } //: HSTACK
        } //: SCROLL
    }
}
// MARK: PREVIEW

struct InsentGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsentGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
