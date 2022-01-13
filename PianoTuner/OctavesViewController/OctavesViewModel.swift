//
//  OctavesViewModel.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

public class OctavesViewModel {
    var octaves: [Octave] = []
    
    init(managedContext: NSManagedObjectContext? = .default) {
        guard let managedContext = managedContext else {
            return
        }
        
        let fetchRequest = NSFetchRequest<Octave>(entityName: "Octave")
        do {
            octaves = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if octaves.count == 0 {
            createDefaultOctaves(managedContext: managedContext)
        }
    }
    
    private func createDefaultOctaves(managedContext: NSManagedObjectContext) {
        
//        let entity = NSEntityDescription.entity(forEntityName: "Octave", in: managedContext)!
//        let octave = NSManagedObject(entity: entity, insertInto: managedContext) as? Octave
//          
//          // 3
//          person.setValue(name, forKeyPath: "name")
//          
//          // 4
//          do {
//            try managedContext.save()
//            people.append(person)
//          } catch let error as NSError {
//            print("Could not save. \(error), \(error.userInfo)")
//          }
    }
}
