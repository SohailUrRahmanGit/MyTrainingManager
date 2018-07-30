//
//  ViewController.swift
//  MyTrainingManager
//
//  Created by SOHAIL UR RAHMAN on 19/07/18.
//  Copyright © 2018 SOHAIL UR RAHMAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trainingIDCell", for: indexPath)
        
    return cell
        
    }
    
    @IBOutlet weak var lastTrainingView: UIView!
    @IBOutlet weak var nextTrainingView: UIView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("This is what")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getTrainingsFromCoreData()
        
    }
    

    var theDataForTraining : [MyTrainingList] = []
    func getTrainingsFromCoreData() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let coreDataTrainingDetails = try? context.fetch(MyTrainingList.fetchRequest()) as? [MyTrainingList]{
                if let theTrainingFile = coreDataTrainingDetails {
                    print(theTrainingFile.startIndex)
                    for item in theTrainingFile {
                        print(item.programName as Any)
                    }
                    
                }
            }
            
            
        }
        
        
        
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
