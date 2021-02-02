//
//  DisplayViewController.swift
//  Roshambo
//
//  Created by Shane Hughes on 1/4/21.
//

import UIKit

class ResultsViewController: UIViewController {

    var labelString: String?
    
    @IBOutlet weak var matchResults: UILabel!
    
    @IBOutlet weak var DisplayResults: UIImageView!
    
    @IBAction func PlayAgain(_ sender: Any) {
        
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        matchResults.text = labelString
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(matchResults.text!)
    }


}

