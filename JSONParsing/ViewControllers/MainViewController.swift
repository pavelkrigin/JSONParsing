//
//  ViewController.swift
//  JSONParsing
//
//  Created by Pavel Krigin on 19.9.22..
//

import UIKit

final class MainViewController: UIViewController {

    //MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchMainModel()
        
    }

    //MARK: - Private Functions
    
    private func fetchMainModel() {
        guard let url = URL(string: "https://evilinsult.com/generate_insult.php?lang=en&type=json")
        else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error")
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                let insultGenerator = try jsonDecoder.decode(InsultGenerator.self, from: data)
                print(insultGenerator)
            } catch {
                print(error.localizedDescription)
            }
                        
        }.resume()
        
    }

}
