//
//  Note+Extension.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

extension Note {
    
    var noteType: NoteType {
        return NoteType(rawValue: index) ?? .a
    }
}
