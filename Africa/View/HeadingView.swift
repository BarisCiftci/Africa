//
//  HeadingView.swift
//  Africa
//
//  Created by Baris Ciftci on 12/11/2022.
//

import SwiftUI

struct HeadingView: View {
    // MARK: PROPERTIES
    var headingImage: String
    var headigText: String
    
    // MARK: BODY
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headigText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
        
    }
}

// MARK: PREVIEW

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headigText: "Wilderness in Pictures")
        
    }
}
