//
//  UITopViewController.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 15.03.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

struct WashItem: Decodable {
    let id: String?
    let title: String?
    let description: String?
    let price: Float?
    let imageName: String?
}

class UITopViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listItems: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Adds a icon on the title. Scaling is a problem yet. */
        let image : UIImage = UIImage(named: "navBarIconx2")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
 
        
        // Check which view is opened, choose right json datafile to be displayed
        // Update with creation/edition of the new views
        let viewTitle = self.tabBarItem.title
        var dsTitle: String = "notin"
        switch viewTitle {
        case "TopsView"?:
            dsTitle = "tops"
        case "TrousersView"?:
            dsTitle = "trousers"
        case "LaundryView"?:
            dsTitle = "laundry"
        default:
            print("Failure at view recognising")
        }
        
        listItems = createArray(itemsDS: dsTitle);
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray(itemsDS: String) -> [Item] {
        var washItemsArray: [Item] = []
        
        // First retrieve data from local json data file
        let pathTo_washItemsData = Bundle.main.path(forResource: itemsDS, ofType: "json")
        let url = URL(fileURLWithPath: pathTo_washItemsData!)
        
        do {
            let washItemsData = try Data(contentsOf: url)
            let washItems = try JSONDecoder().decode([WashItem].self, from: washItemsData)
            
            // Populate an array with wash items from data files.
            for i in washItems {
                let currentItem = Item(itemID: i.id!, image: UIImage(named: i.imageName!)!, title: i.title!, description: i.description!)
                washItemsArray.append(currentItem)
            }
        } catch { print("Error in trying to retrieve data "); print(error) }
        
        return washItemsArray
    }
}

extension UITopViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    // Runs for every cell. i.e How to coonfigure every next appearing cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = listItems[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        
        cell.setItem(item: item)
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    
}
