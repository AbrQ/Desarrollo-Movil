//
//  FishesTableViewController.swift
//  MyOwnPlasticFishes
//
//  Created by Abraham Quezada on 9/26/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit
import Kingfisher

class FishesTableViewController: UITableViewController {
    
    var fishes: [Fish]?{
        didSet{
            self.tableView.reloadData()
        }
    }
    
    let cellId = "fishCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fishes"
        tableView.register(UINib(nibName: "FishesTableViewCell", bundle: nil), forCellReuseIdentifier: cellId)
        // Do any additional setup after loading the view.
    }

    // MARK: -table view settings
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(74)
    }
    
    // MARK: -table data source
    func loadFishes(){
        FishService.shared.all { [weak self] fishes in
            DispatchQueue.main.async {
                self?.fishes = fishes
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fishes?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! FishesTableViewCell
        
        guard let fish = fishes?[indexPath.row] else { return cell }
        cell.fishName.text = fish.name
        cell.fishDescription.text = fish.webUrlString
        cell.imageFish.kf.setImage(with: fish.imageURL!)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyboard = UIStoryboard.init(name: "Detail", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "fishDetail")
        navigationController?.pushViewController(viewController, animated: true)
    }


}
