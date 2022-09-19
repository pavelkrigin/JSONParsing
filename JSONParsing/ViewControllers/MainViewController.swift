//
//  ViewController.swift
//  JSONParsing
//
//  Created by Pavel Krigin on 19.9.22..
//

import UIKit

final class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchMainModel()

        
    }

    private func fetchMainModel() {
        guard let url = URL(string: "https://evilinsult.com/generate_insult.php?lang=en&type=json")
        else { return }

        URLSession.shared.dataTask(with: url) {
            guard let data = data else {
                print()
                return
            }
        }
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url)
    }

    task.resume()
    
}

