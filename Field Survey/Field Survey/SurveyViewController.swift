//
//  SurveyViewController.swift
//  Field Survey
//
//  Created by John Williams III on 5/1/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    //var fieldItems = ["Red-tailed Hawk", "American Bullfrog", "Cottonmouth Snake", "Prairie Lizard", "Red-spotted Purple Butterfly", "Milkweed Bug", "Largemouth Bass", "Poison Oak", "Rosy Maple Moth", "Groundhog", "Black Squirrel"]
    
    var fieldItems = [FieldItems(name: "Red-tailed Hawk", dateANDtime: "Jun 14, 2017 at 11:00:03 AM", info: "Standing in tree in middle of wooded area." ),
                      FieldItems(name: "American Bullfrog", dateANDtime: "Jun 15, 2017 at 4:10:23 AM", info: "Seated in the grassy area next to the pond."),
                      FieldItems(name: "Cottonmouth Snake", dateANDtime: "Jun 15, 2017 at 4:15:12 AM", info: "Laying on rocks near the pond."),
                      FieldItems(name: "Prairie Lizard", dateANDtime: "Jun 16, 2017 at 8:12:45 AM", info: "Laying on a sunny rock 10 meters from the south end of the pond."),
                      FieldItems(name: "Red-spotted Purple Butterfly", dateANDtime: "Jun 17, 2017 at 9:26:42 AM", info: "Standing on flowering plant in middle of meadow."),
                      FieldItems(name: "Milkweed Bug", dateANDtime: "Jun 17, 2017 at 9:45:06 AM", info: "Standing on flower at the edge of meadow and woods."),
                      FieldItems(name: "Largemouth Bass", dateANDtime: "Jun 18, 2017 at 10:14:03 AM", info: "Swimming in a stream crossing the meadow."),
                      FieldItems(name: "Poison Oak", dateANDtime: "Jun 19, 2017 at 3:05:32 AM", info: "Attached to side of a tree in the woods."),
                      FieldItems(name: "Rosy Maple Moth", dateANDtime: "Jun 19, 2017 at 3:39:08 AM", info: "Located in wet area of woods."),
                      FieldItems(name: "Groundhog", dateANDtime: "Jun 20, 2017 at 5:32:39 AM", info: "Standing on rocks in grassy meadow."),
                      FieldItems(name: "Black Squirrel", dateANDtime: "Jun 20, 2017 at 6:17:01 AM", info: "Standing on granite slab in meadow.")]
    
    @IBOutlet weak var fieldSurveyTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "surveyCell", for: indexPath)
       
        cell.textLabel?.text = fieldItems[indexPath.row].name

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SurveyDetailViewController, let row = fieldSurveyTableView.indexPathForSelectedRow?.row {
            destination.fieldItem = fieldItems[row]
        }
    }
}
