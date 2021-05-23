//
//  PuppiesTableViewController.swift
//  TablePractice
//
//  Created by Marnie Reid on 5/23/21.
//  Copyright © 2021 Marnie Reid. All rights reserved.
//

import UIKit

struct Puppies {
    var id : Int
    var title : String
    var text : String
    var image: String
}

class PuppiesTableViewController: UITableViewController {

    var allPuppies = [Puppies(id: 1, title: "Emerson", text: "Nickname Emmy. The cutest and most adorable mini aussie to ever exist 🥺", image: "EmmyPic"), Puppies(id: 2, title: "Pilaf", text: "Adorable baby dachshund living her best life", image: ""), Puppies(id: 3, title: "Marnie the Dog", text: "Best dog name ever, very sweet pup.", image: "")]

    override func numberOfSections(in tableView: UITableView) -> Int {
                return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPuppies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = allPuppies[indexPath.row].title
        
        //This will make each cell say Section # Row #

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "World's Best Puppies"
    }
    //Adds a name and section number to each section of the table


}
