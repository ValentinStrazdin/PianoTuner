//
//  OctaveType.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation

enum OctaveType: Int32 {
    case subContrOctave = 0
    case contrOctave
    case bigOctave
    case lowOctave
    case firstOctave
    case secondOcatve
    case thirdOcatve
    case fourthOctave
    case fifthOctave
    
    static var allOctaveTypes: [OctaveType] {
        return [.subContrOctave,
                .contrOctave,
                .bigOctave,
                .lowOctave,
                .firstOctave,
                .secondOcatve,
                .thirdOcatve,
                .fourthOctave,
                .fifthOctave]
    }
    
    static var `default`: OctaveType {
        return .firstOctave
    }
    
    var allNotes: [NoteType] {
        switch self {
        case .subContrOctave:
            return [.a, .ais, .h]
        case .fifthOctave:
            return [.c]
        default:
            return [.c, .cis, .d, .dis, .e, .f, .fis, .g, .gis, .a, .ais, .h]
        }
    }
    
    var frequencyMultiplier: Float {
        let power = Float(self.rawValue - OctaveType.default.rawValue)
        return pow(2, power)
    }
    
    var name: String {
        switch self {
        case .subContrOctave:
            return "Субконтроктава"
        case .contrOctave:
            return "Контроктава"
        case .bigOctave:
            return "Большая октава"
        case .lowOctave:
            return "Малая октава"
        case .firstOctave:
            return "Первая октава"
        case .secondOcatve:
            return "Вторая октава"
        case .thirdOcatve:
            return "Третья октава"
        case .fourthOctave:
            return "Четвёртая октава"
        case .fifthOctave:
            return "Пятая октава"
        }
    }

}
