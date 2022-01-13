//
//  NotesViewModel.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

public class NotesViewModel {
    var octaveType: OctaveType
    var notes: [Note] = []
    
    init(octave: Octave) {
        self.octaveType = octave.octaveType
//        self.notes = Array(octave.notes)
    }
}
