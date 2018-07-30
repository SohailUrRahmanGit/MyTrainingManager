//
//  CollectionViewCell.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 29/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var trainingDateLabel: UILabel!
    
    @IBOutlet weak var trainingNameLabel: UILabel!
    
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var trainerName: UILabel!
    
    func DisplayContent(trainingName : String , trainingDate : String, Venue : String , trainerNameVal : String)
    {
        trainingDateLabel.text = trainingDate
        trainingNameLabel.text = trainingName
        venueLabel.text = Venue
        trainerName.text = trainerNameVal
    }
    
    
}
