//
//  ViewController.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 19/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var lastTrainingView: UIView!
    @IBOutlet weak var nextTrainingView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    var theDataForTraining : [MyTrainingList] = []
    var SortedDataForTraining : [MyTrainingList] = []

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if (theDataForTraining.count == 0)
        {
            return 1
        }
        else
        {
        return SortedDataForTraining.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
         let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "trainingIDCell", for: indexPath) as! CollectionViewCell

        if (theDataForTraining.count == 0)
        {
            cell.DisplayContent(trainingName:"No Data Yet", trainingDate:"", Venue: "", trainerNameVal:"")
            return cell
        }
        else{

              cell.DisplayContent(trainingName: SortedDataForTraining[indexPath.row].programName!, trainingDate: SortedDataForTraining[indexPath.row].date!, Venue: SortedDataForTraining[indexPath.row].venue!, trainerNameVal: SortedDataForTraining[indexPath.row].trainerName!)

            }
        
        
        return cell

    }
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getTrainingsFromCoreData()
        collectionView.reloadData()
        
    }
    

    func getTrainingsFromCoreData() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let coreDataTrainingDetails = try? context.fetch(MyTrainingList.fetchRequest()) as? [MyTrainingList]{
                if let theTrainingFile = coreDataTrainingDetails {
                   theDataForTraining = theTrainingFile
                    
                   
                    
                    
                    let todaysDate = Date()
                    let formattedDateString = self.dateToSrring(valueToString: todaysDate)
                    let formattedStringDate = self.stringToDate(valueToDate: formattedDateString)
                    for i in theDataForTraining {

                        if let dateFromArray : String = i.date {
                            let dateFromArraySting = self.stringToDate(valueToDate: dateFromArray)

                         if dateFromArraySting > formattedStringDate
                         {
                          SortedDataForTraining.append(i)
                         }

                        }

                        
                    }
                    
                }
            }
        }
    }
    
    
    func dateToSrring(valueToString : Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d, yyyy"
        let formatteddate = formatter.string(from: valueToString)
        return formatteddate
        
    }

    func stringToDate(valueToDate : String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM d, yyyy"
        let datee = dateFormatter.date(from: valueToDate)
        return datee!
}
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addTrainingButtonClicked(_ sender: Any) {
       
    }
    
    @IBAction func showHistoryButtonClicked(_ sender: Any) {
    }

    @IBAction func lastTrainingButtonClicked(_ sender: Any) {
    }

    @IBAction func nextTrainingButtonClicked(_ sender: Any) {
    }
}
