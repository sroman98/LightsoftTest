//
//  SplitViewCell.swift
//  LightsoftTest
//
//  Created by Sandra Román on 01/05/21.
//

import UIKit

class SplitViewCell: UITableViewCell {
    
    @IBOutlet weak var titledViewLeft: TitledView!
    @IBOutlet weak var titledViewRight: TitledView!
    
    class func createCell() -> SplitViewCell? {
        let nib = UINib(nibName: "SplitViewCell", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? SplitViewCell
        return cell
    }
    
    func updateCell(banner: SplitBanner) {
        titledViewLeft.titleLabel.text = banner.title
        titledViewLeft.backgroundImage.image = UIImage(named: banner.bgImageName)
        titledViewRight.titleLabel.text = banner.title2
        titledViewRight.backgroundImage.image = UIImage(named: banner.bgImageName2)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0))
    }
}
