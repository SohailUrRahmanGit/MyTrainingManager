//
//  DatePickerViewController.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 31/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit



class DatePickerViewController: UIViewController {

    var delegate : DateProtocol? 
    
    @IBOutlet weak var datePickerView: UIDatePicker!
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBAction func doneButtonClicked(_ sender: Any) {

        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyyy"
        let formatteddate = formatter.string(from: datePickerView.date)
     //   print(formatteddate)

       delegate?.transferData(Value: formatteddate)
        
        dismiss(animated:true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
