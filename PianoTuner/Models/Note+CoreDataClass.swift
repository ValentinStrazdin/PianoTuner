//
//  Note+CoreDataClass.swift
//  
//
//  Created by Valentin Strazdin on 1/17/22.
//
//

import Foundation
import CoreData

@objc(Note)
public class Note: NSManagedObject {

    var noteType: NoteType {
        return NoteType(rawValue: index) ?? .a
    }

    static func create(type: NoteType, context: NSManagedObjectContext) -> Note {
        let note = Note(context: context)
        note.index = type.rawValue
        note.name = type.name
        return note
    }
}
