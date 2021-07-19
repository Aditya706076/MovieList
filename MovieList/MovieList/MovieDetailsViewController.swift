//
//  MovieDetailsViewController.swift
//  MovieList
//
//  Created by Aditya on 19/07/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var bookButton: UIButton!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieImage: UIImageView!

        var movieDetail : movie?
        let baseURL: String = "https://image.tmdb.org/t/p/w92"

        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            movieName.text = movieDetail?.title
            overviewLabel.text = movieDetail?.overview
            
            let poster = movieDetail?.poster_path ?? ""
            if let imageURl = URL(string: (baseURL + poster))
            {
                let task = URLSession.shared.dataTask(with: imageURl) {(data, response, error) in
                    guard let data = data else {
                        return
                    }
                    let poster = UIImage(data: data)
                    
                    DispatchQueue.main.async {
                        self.movieImage.image = poster
                    }
                }
                task.resume()
            }
            

        }
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }

