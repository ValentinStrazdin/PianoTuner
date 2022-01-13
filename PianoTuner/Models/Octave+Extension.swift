//
//  Octave+Extension.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

extension Octave {
    
    var octaveType: OctaveType {
        return OctaveType(rawValue: index) ?? .firstOctave
    }
    
}
