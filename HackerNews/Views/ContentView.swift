//
//  ContentView.swift
//  HackerNews
//
//  Created by Victor Lee on 12/17/20.
//

import SwiftUI


struct ContentView: View {
    
   @ObservedObject var networkMangaer = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkMangaer.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points ))
                            Text(post.title)
                        }
                    })
               
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear(perform: {
            networkMangaer.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



