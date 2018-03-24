//
//  UITopViewController.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 15.03.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class UITopViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageName: UIImage = #imageLiteral(resourceName: "dummyPic")
        
        let viewTitle = self.tabBarItem.title
        switch viewTitle {
        case "TopsView"?:
            imageName = #imageLiteral(resourceName: "dummyPic")
        case "TrousersView"?:
            imageName = #imageLiteral(resourceName: "buildingDummy")
        case "LaundryView"?:
            imageName = #imageLiteral(resourceName: "mountainDummy")
        default:
            print("Some other character")
        }
        
        
        
        videos = createArray(imgVar: imageName);
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray(imgVar: UIImage) -> [Item] {
        
        var tempVideos: [Item] = []
        
        let video1 = Item(image: imgVar, title: "Shirt", description: "Washed, ironed and hung")
        let video2 = Item(image: imgVar, title: "Blouse", description: "Washed, ironed and hung")
        let video3 = Item(image: imgVar, title: "T-Shirt", description: "Washed, ironed and hung")
        let video4 = Item(image: imgVar, title: "Silk shirt", description: "Washed, ironed and hung")
        let video5 = Item(image: imgVar, title: "Dinner shirt", description: "Washed, ironed and hung")
        let video6 = Item(image: imgVar, title: (self.tabBarItem.title)!, description: "Washed, ironed and hung")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)

        return tempVideos
    }
}

extension UITopViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    // Runs for every cell. i.e How to coonfigure every next appearing cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        
        cell.setVideo(video: video)
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    
}
