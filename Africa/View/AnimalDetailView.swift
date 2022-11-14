//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Baris Ciftci on 12/11/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //: HERO IMAGES
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                
                //: TITLE
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //: HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //: GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headigText: "Wilderness in Pictures")
                    InsentGalleryView(animal: animal)
                }
                //: FACTS
                Group {
                     HeadingView(headingImage: "questionmark.circle", headigText: "Did you know?")
                    InsertFackView(animal: animal)
                }
                .padding(.horizontal)
                
                //: DESCRIOTION
                Group{
                    HeadingView(headingImage: "info.circle", headigText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                //: MAP
                
                Group{
                    HeadingView(headingImage: "map", headigText: "National Parks")
                    
                    InsertMapView()
                }
                .padding(.horizontal)
                
                //: LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headigText: "Learn More")
                }
                .padding(.horizontal)
                
                ExternalWebView(animal: animal)
                
            }//: VSTACK
            .navigationBarTitle("learn about \(animal.name)", displayMode: .inline)
            
        }//: SCROLL
    }
}
// MARK: PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        
    }
}
