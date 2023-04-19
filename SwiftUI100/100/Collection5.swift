//
//  Collection5.swift
//  SwiftUI100
//
//  Created by KS on 2023/04/19.
//

import SwiftUI

struct Collection5: View {
    @ObservedObject var dataSource = PokeDataSource()

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(Array(dataSource.pokemons.enumerated()), id: \.1.name) { (index, pokemon) in
                    VStack {
                        ImageView(urlString: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(index+1).png")
                        Text(pokemon.name)
                    }
                }
            }

            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
        .onAppear() {
            dataSource.loadData()
        }
    }
}

struct Collection5_Previews: PreviewProvider {
    static var previews: some View {
        Collection5()
    }
}

class PokeDataSource: ObservableObject {
    @Published var pokemons = [PokemonListItem]()

    func loadData() {
        guard let pokeUrl = URL(string: "https://pokeapi.co/api/v2/pokemon/") else {
            print("Error: Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: pokeUrl) { data, response, error in
            guard let data = data else {
                print("Error: No data")
                return
            }

            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(PokemonListResponse.self, from: data)
                self.pokemons = result.results
                print(self.pokemons)
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }.resume()
    }
}

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader

    init(urlString: String) {
        guard let url = URL(string: urlString) else {
            imageLoader = ImageLoader(url: URL(string: urlString)!)
            return
        }

        imageLoader = ImageLoader(url: url)
    }

    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
        } else {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
        }
    }
}


class ImageLoader: ObservableObject {
    @Published var image: UIImage?

    init(url: URL) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }.resume()
    }
}


struct PokemonListResponse: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonListItem]
}

struct PokemonListItem: Codable {
    let name: String
    let url: String
}

