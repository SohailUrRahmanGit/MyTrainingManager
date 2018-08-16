//
//  TrainingDataSingleton.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 01/08/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import Foundation
import UIKit



class TrainingDataSingleton
{
    static let shared  = TrainingDataSingleton()
    
    

    var trainingNameSingleton : String?
    var trainingDateSingleton : String?
    var venue : String?
    var timeTraining : String?
    var trainerName : String?
    var trainingCatrgory : String?
    

    
  
    private init() {
        trainingNameSingleton = ""
        trainingDateSingleton = ""
        venue = ""
        timeTraining = ""
        trainerName = ""
        trainingCatrgory = ""
    }
    
    func saveToDisk()
    {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let addTrainingDetails = MyTrainingList(entity: MyTrainingList.entity(), insertInto: context)
            
            if let programeName = trainingNameSingleton, let dateOfTraining = trainingDateSingleton, let venueDetails = venue , let timeDetails = timeTraining , let trainerDetails = trainerName,let categoryDetail = trainingCatrgory
            {
                addTrainingDetails.programName = programeName
                addTrainingDetails.date = dateOfTraining
                addTrainingDetails.venue = venueDetails
                addTrainingDetails.time = timeDetails
                addTrainingDetails.trainerName = trainerDetails
                addTrainingDetails.category = categoryDetail
            }
            do {
                print("All fine in  saving")

                try context.save()
            } catch {
                print("Failed saving")
            }
            
        }
    }
    
    
    
}
