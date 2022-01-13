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
    
    static var `default`: NSManagedObjectContext? {
        let appDelegate = (UIApplication.shared.delegate as? AppDelegate)
        return appDelegate?.persistentContainer.viewContext
    }
}
