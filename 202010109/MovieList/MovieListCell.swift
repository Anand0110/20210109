//
//  MovieListCell.swift
//  202010109
//
//  Created by PCS183 on 09/01/21.
//

import UIKit
import SkeletonView

class MovieListCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var imgCover: UIImageView!
    @IBOutlet weak var lblTitle: AppLabel!
    @IBOutlet weak var lblDate: AppLabel!
    @IBOutlet weak var lblDetail: AppLabel!
    
    static let strIdentifier: String = "MovieListCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
        self.lblDate.text = "Date"
        self.lblTitle.text = "Title"
        self.lblDetail.text = "Detail"
    }
    
    func showSkeletonEffect(ishidden: Bool) {
        if ishidden {
            self.imgCover.showGradientSkeleton()
            self.lblTitle.showGradientSkeleton()
            self.lblDate.showGradientSkeleton()
            self.lblDetail.showGradientSkeleton()
        } else {
            self.imgCover.hideSkeleton()
            self.lblTitle.hideSkeleton()
            self.lblDate.hideSkeleton()
            self.lblDetail.hideSkeleton()
        }
    }
}
