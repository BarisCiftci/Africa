//
//  GalleryView.swift
//  Africa
//
//  Created by Baris Ciftci on 23/10/2022.
//

import SwiftUI

struct GalleryView: View {
    // MARK: PROPERTIES
    
    // MARK: BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text("Gallery")
        }//: SROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}
// MARK: PREVIEW

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
