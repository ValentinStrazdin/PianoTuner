//
//  NotesManager.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

class NotesManager {
    let mainFrequency: Float
    
    
    init(mainFrequency: Float = 440.0) {
        self.mainFrequency = mainFrequency
    }
    
    func getFrequency(octaveType: OctaveType = .firstOctave,
                      noteType: NoteType = .a) -> Float {
        return mainFrequency * noteType.frequencyMultiplier * octaveType.frequencyMultiplier
    }
    
    static var shared: NotesManager = NotesManager()
    
    static func createDefaultNotes() {
        
    }
    
}
