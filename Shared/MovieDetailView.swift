//
//  MovieDetailView.swift
//  API
//
//  Created by 沈秉叡 on 2022/1/29.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    @State private var scale: CGFloat = 1
    @State private var newScale: CGFloat = 1
    
    var body: some View {
        VStack {
            NetworkImage(url: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2\(movie.backdrop_path)")!)
                .scaledToFit()
            List {
                Section(header: Text("電影名稱")) {
                    Text(movie.title + "（\(movie.original_title)）")
                }
                Section(header: Text("上映日期")) {
                    Text(movie.release_date)
                }
                Section(header: Text("概要")) {
                    Text(movie.overview)
                }
            }
            
        }
        .navigationTitle(Text(movie.title))
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(id: 540464, title: "aa", original_title: "bb", backdrop_path: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kf456ZqeC45XTvo6W9pW5clYKfQ.jpg")!, release_date: "2000-11-11", overview: "overview test")
        )
    }
}

