//
//  MovieListVC.swift
//  202010109
//
//  Created by PCS183 on 09/01/21.
//

import Foundation
import UIKit

class MoviewListVC: BaseViewController {
    
    @IBOutlet weak var tblMovieList: UITableView!
    
    // MARK: - LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNib()
        self.tblMovieList.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tblMovieList.reloadData()
    }
    
    // MARK: - Setup Methods
    
    /// registerNib: Call this method to register table view cell
    func registerNib(){
        tblMovieList.register(UINib(nibName: MovieListCell.strIdentifier, bundle: .main), forCellReuseIdentifier: MovieListCell.strIdentifier)
    }
}

extension MoviewListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MovieListCell.strIdentifier, for: indexPath) as? MovieListCell else {
            return UITableViewCell()
        }
        cell.configureCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
