//
//  NoteType.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation

enum NoteType: Int64 {
    case c = 1
    case cis
    case d
    case dis
    case e
    case f
    case fis
    case g
    case gis
    case a
    case ais
    case h
    
    static var `default`: NoteType {
        return .a
    }
    
    var frequencyMultiplier: Float {
        let power = Float(self.rawValue - NoteType.default.rawValue)
        return pow(2, power / 12)
    }
    
    var name: String {
        switch self {
        case .c:
            return "До"
        case .cis:
            return "До диез"
        case .d:
            return "Ре"
        case .dis:
            return "Ре диез"
        case .e:
            return "Ми"
        case .f:
            return "Фа"
        case .fis:
            return "Фа диез"
        case .g:
            return "Соль"
        case .gis:
            return "Соль диез"
        case .a:
            return "Ля"
        case .ais:
            return "Ля диез"
        case .h:
            return "Си"
        }
    }

    var nameWithSpaces: String {
        let spacesCount = NoteType.maxNameLength - name.count + 1
        return "\(name)\(String(repeating: " ", count: spacesCount))"
    }

    static var maxNameLength: Int {
        NoteType.gis.name.count
    }
}
