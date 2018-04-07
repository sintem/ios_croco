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
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageName: UIImage = #imageLiteral(resourceName: "dummyPic")
        
        let viewTitle = self.tabBarItem.title
        switch viewTitle {
        case "Tops"?:
            imageName = #imageLiteral(resourceName: "dummyPic")
        case "Trousers"?:
            imageName = #imageLiteral(resourceName: "buildingDummy")
        case "Laundry"?:
            imageName = #imageLiteral(resourceName: "mountainDummy")
        default:
            print("Some other character")
        }
        
        // MASTER BRANCH
        
        videos = createArray(imgVar: imageName);
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray(imgVar: UIImage) -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: imgVar, title: "Shirt", description: "Washed, ironed and hung")
        let video2 = Video(image: imgVar, title: "Blouse", description: "Washed, ironed and hung")
        let video3 = Video(image: imgVar, title: "T-Shirt", description: "Washed, ironed and hung")
        let video4 = Video(image: imgVar, title: "Silk shirt", description: "Washed, ironed and hung")
        let video5 = Video(image: imgVar, title: "Dinner shirt", description: "Washed, ironed and hung")
        let video6 = Video(image: imgVar, title: "helllo", description: "Washed, ironed and hung")
        
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        //cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    
}
