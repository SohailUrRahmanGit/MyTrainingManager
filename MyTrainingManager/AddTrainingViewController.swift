//
//  AddTrainingViewController.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 29/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit

class AddTrainingViewController: UIViewController {

    @IBOutlet weak var programNameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var VenueTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var trainerNameTextField: UITextField!
    @IBOutlet weak var categoryTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTrainingButtonClicked(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
