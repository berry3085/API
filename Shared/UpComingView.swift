//
//  UpComingView.swift
//  API
//
//  Created by 沈秉叡 on 2022/1/29.
//

import SwiftUI

struct UpComingView: View {
    @State private var movies = [Movie]()
    
    func fetchUpComingMovies() {
        let urlStr = "https://api.themoviedb.org/3/movie/upcoming?api_key=b4e4f2b43d86e1779e3a1e347c7ad534&language=zh-TW&page=1"
        
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let data = data,
                   let MovieResults = try? decoder.decode(MovieResults.self, from: data) {
                    movies = MovieResults.results
                    
                }
                else {
                    print("error")
                }
                
            }.resume()
        }
    }
    
    var body: some View {
        NavigationView {
            List(movies.indices, id:\.self, rowContent: { (index) in
                NavigationLink(
                    destination: MovieDetailView(movie: movies[index]),
                    label: {MovieRow(movie: movies[index])
                    })
            })
            .onAppear(perform: {
                fetchUpComingMovies()
            })
            .navigationTitle(Text("即將上映"))
        }
        
    }
}

struct UpComingView_Previews: PreviewProvider {
    static var previews: some View {
        UpComingView()
    }
}

