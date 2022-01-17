//
//  Octave+CoreDataClass.swift
//  
//
//  Created by Valentin Strazdin on 1/17/22.
//
//

import Foundation
import CoreData

@objc(Octave)
public class Octave: NSManagedObject {

    var octaveType: OctaveType {
        return OctaveType(rawValue: index) ?? .firstOctave
    }

    static func create(type: OctaveType, context: NSManagedObjectContext) -> Octave {
        let octave = Octave(context: context)
        octave.index = type.rawValue
        octave.name = type.name
        return octave
    }
}
