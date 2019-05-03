//
//  SurveyDetailViewController.swift
//  Field Survey
//
//  Created by John Williams III on 5/3/19.
//  Copyright © 2019 John Williams III. All rights reserved.
//

import UIKit

class SurveyDetailViewController: UIViewController {
    
    @IBOutlet weak var fieldItemLabel: UILabel!
    
    @IBOutlet weak var fieldItemDateTime: UILabel!
    
    @IBOutlet weak var fieldItemInfo: UILabel!
    
    var fieldItem: FieldItems?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fieldItemLabel.text = fieldItem?.name
        
        fieldItemDateTime.text = fieldItem?.dateANDtime
        
        fieldItemInfo.text = fieldItem?.info
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
