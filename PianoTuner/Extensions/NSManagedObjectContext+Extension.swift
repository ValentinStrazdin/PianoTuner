//
//  NSManagedObjectContext+Extension.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData
import UIKit

extension NSManagedObjectContext {
    
    static var `default`: NSManagedObjectContext {
        let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        return appDelegate.persistentContainer.viewContext
    }

    // MARK: - Core Data Saving support
    func saveContext () {
        if self.hasChanges {
            do {
                try self.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
