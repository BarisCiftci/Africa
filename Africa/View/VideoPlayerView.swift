//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Baris Ciftci on 19/11/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: PROPERTIES
    var videoSlected: String
    var videoTitle: String
    
    // MARK: BODY
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSlected, fileFormate: "mp4")){
             //   Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            
            )
        }//: VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
            
    }
       
}
// MARK: PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSlected: "lion", videoTitle: "lion")
        }
    }
}
