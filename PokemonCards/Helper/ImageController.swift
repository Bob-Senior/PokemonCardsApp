//
//  ImageController.swift
//  PokemonCards
//
//  Created by BOBUR on 22/02/2021.
//

import UIKit

class  ImageController {
    static func getImage(for url: String, comletion: @escaping(UIImage?) -> Void ) {
        guard let imageUrl = URL(string: url) else {
            fatalError("could not create URL \(url)")
        }
        NetworkController.performRequest(for: imageUrl, httpMethod: .get) { (data, err) in
            guard let data = data, let image = UIImage(data: data) else {
                
                DispatchQueue.main.async { comletion(nil) }
                    return
            }
                
             DispatchQueue.main.async { comletion(image) }
            
            
                
            }
            
        }
    }

