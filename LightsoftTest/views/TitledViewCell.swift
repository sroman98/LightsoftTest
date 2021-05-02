//
//  TitledViewCell.swift
//  LightsoftTest
//
//  Created by Sandra Román on 01/05/21.
//

import UIKit

class TitledViewCell: UITableViewCell {
    
    @IBOutlet weak var titledView: TitledView!
    
    class func createCell() -> TitledViewCell? {
        let nib = UINib(nibName: "TitledViewCell", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? TitledViewCell
        return cell
    }
    
    func updateCell(banner: Banner) {
        titledView.titleLabel?.text = banner.title
        titledView.backgroundImage?.image = UIImage(named: banner.bgImageName)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0))
    }
}
