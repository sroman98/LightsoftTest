//
//  SubtitledViewCell.swift
//  LightsoftTest
//
//  Created by Sandra Román on 01/05/21.
//

import UIKit

class SubtitledViewCell: UITableViewCell {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    class func createCell() -> SubtitledViewCell? {
        let nib = UINib(nibName: "SubtitledViewCell", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? SubtitledViewCell
        return cell
    }
    
    func updateCell(banner: SubtitledBanner) {
        titleLabel.text = banner.title
        subtitleLabel.text = banner.subtitle
        backgroundImage.image = UIImage(named: banner.bgImageName)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0))
    }
}
