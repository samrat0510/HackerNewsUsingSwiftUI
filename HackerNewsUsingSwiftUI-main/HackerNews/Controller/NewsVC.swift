
//  ViewController.swift
//  HackerNews
//
//  Created by BKS-GGS on 10/01/23.
//

import UIKit

class NewsVC: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    var objVM = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        //Calling API
        objVM.getNewsFrom() {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
}

 extension NewsVC : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objVM.getTotalHits()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsCell
        cell?.setData(title: objVM.getTitleFor(row: indexPath.row), points: objVM.getPointsFor(row: indexPath.row))
        return cell!
    }
}

