//
//  AnimalDetailView.swift
//  Africa
//
//  Created by SoePaing on 04/09/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let aniaml: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(aniaml.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(aniaml.name.uppercased())
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
                
                // HEADLINE
                Text(aniaml.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: aniaml)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: aniaml)
                }
                .padding(.horizontal)
                
                // DESCRITION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(aniaml.name)")
                    
                    Text(aniaml.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(headingImage: "Map", headingText: "National Parks")
                    
                    insetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: aniaml)
                }
                .padding(.horizontal)
            }//: VSTACK
            .navigationBarTitle("Learn about \(aniaml.name)", displayMode: .inline)
        }//: SCROLL
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(aniaml: animals[0])
        }
    }
}
