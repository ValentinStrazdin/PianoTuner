//
//  NotesManager.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

class NotesManager {
    private var viewContext: NSManagedObjectContext
    let mainFrequency: Float
    
    init(mainFrequency: Float = 440.0,
         viewContext: NSManagedObjectContext = .default) {
        self.mainFrequency = mainFrequency
        self.viewContext = viewContext
    }
    
    func getFrequency(octaveType: OctaveType = .firstOctave,
                      noteType: NoteType = .a) -> Float {
        return mainFrequency * noteType.frequencyMultiplier * octaveType.frequencyMultiplier
    }
    
    func createDefaultNotes() {
        for octaveType in OctaveType.allOctaveTypes {
            let octave = Octave.create(type: octaveType, context: viewContext)
            for noteType in octaveType.allNotes {
                let note = Note.create(type: noteType, context: viewContext)
                note.frequency = getFrequency(octaveType: octaveType, noteType: noteType)
            }
        }
    }
    
}
