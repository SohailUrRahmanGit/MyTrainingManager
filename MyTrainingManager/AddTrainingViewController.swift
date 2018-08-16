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
    
    
    override func viewWillAppear(_ animated: Bool) {

    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTrainingButtonClicked(_ sender: Any) {
        
        TrainingDataSingleton.shared.trainingNameSingleton = programNameTextField.text!
        
        TrainingDataSingleton.shared.trainingDateSingleton = dateTextField.text!

        TrainingDataSingleton.shared.venue = VenueTextField.text!

        TrainingDataSingleton.shared.timeTraining = timeTextField.text!

        TrainingDataSingleton.shared.trainerName = trainerNameTextField.text!

        TrainingDataSingleton.shared.trainingCatrgory = categoryTextField.text!
        
        TrainingDataSingleton.shared.saveToDisk()
        _ = navigationController?.popViewController(animated: true)

    }
    
    
    @IBAction func datePickerShowButtonClicked(_ sender: Any) {
         let  myViewController = self.storyboard?.instantiateViewController(withIdentifier: "datePickerId") as! DatePickerViewController
        myViewController.delegate = self
        self.present(myViewController,animated: true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
  
}

extension AddTrainingViewController : DateProtocol {
    func transferData(Value: String) {
        dateTextField.text = Value
    }
    
    
}

