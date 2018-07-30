//
//  AddTrainingViewController.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 29/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit

class AddTrainingViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var programNameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var VenueTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var trainerNameTextField: UITextField!
    @IBOutlet weak var categoryTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         programNameTextField.delegate = self
        dateTextField.delegate = self
        VenueTextField.delegate = self
        timeTextField.delegate = self
        trainerNameTextField.delegate = self
        categoryTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTrainingButtonClicked(_ sender: Any) {
//        let addTrainingDetails = MyTrainingListClass()
//        if let programeName = programNameTextField.text, let dateOfTraining = dateTextField.text, let venueDetails = VenueTextField.text , let timeDetails = timeTextField.text , let trainerDetails = trainerNameTextField.text,let categoryDetail = categoryTextField.text
//                {
//            addTrainingDetails.programName = programeName
//            addTrainingDetails.date = dateOfTraining
//            addTrainingDetails.venue = venueDetails
//            addTrainingDetails.time = timeDetails
//            addTrainingDetails.trainerName = trainerDetails
//            addTrainingDetails.category = categoryDetail
//
//        }
    
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        
        let addTrainingDetails = MyTrainingList(entity: MyTrainingList.entity(), insertInto: context)
    
            if let programeName = programNameTextField.text, let dateOfTraining = dateTextField.text, let venueDetails = VenueTextField.text , let timeDetails = timeTextField.text , let trainerDetails = trainerNameTextField.text,let categoryDetail = categoryTextField.text
            {
                addTrainingDetails.programName = programeName
                addTrainingDetails.date = dateOfTraining
                addTrainingDetails.venue = venueDetails
                addTrainingDetails.time = timeDetails
                addTrainingDetails.trainerName = trainerDetails
                addTrainingDetails.category = categoryDetail
            }
            do {
                try context.save()
                navigationController?.popViewController(animated: true)
            } catch {
                print("Failed saving")
            }
            
        }
    
    
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
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
