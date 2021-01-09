//
//  MovieDetailVC.swift
//  202010109
//
//  Created by PCS183 on 09/01/21.
//

import Foundation
import UIKit

class MovieDetailVC: BaseViewController {
    
    @IBOutlet weak var tblMovieDetail: UITableView!
}

extension MovieDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
