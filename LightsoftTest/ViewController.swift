//
//  ViewController.swift
//  LightsoftTest
//
//  Created by Sandra Román on 01/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .none
        
        view.addSubview(tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return banners.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let banner = banners[indexPath.row]
        
        switch banner.type {
        case .splitBanner:
            var cell = tableView.dequeueReusableCell(withIdentifier: "SplitViewCell") as? SplitViewCell
            if cell == nil {
                cell = SplitViewCell.createCell()
            }
            cell?.updateCell(banner: banner as! SplitBanner)
            return cell!
        case .subtitledBanner:
            var cell = tableView.dequeueReusableCell(withIdentifier: "SubtitledViewCell") as? SubtitledViewCell
            if cell == nil {
                cell = SubtitledViewCell.createCell()
            }
            cell?.updateCell(banner: banner as! SubtitledBanner)
            return cell!
        default:
            var cell = tableView.dequeueReusableCell(withIdentifier: "TitledViewCell") as? TitledViewCell
            if cell == nil {
                cell = TitledViewCell.createCell()
            }
            cell?.updateCell(banner: banner)
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let type = banners[indexPath.row].type
        
        switch type {
        case .splitBanner:
            return 200
        case .subtitledBanner:
            return 350
        default:
            return 250
        }
    }
}
