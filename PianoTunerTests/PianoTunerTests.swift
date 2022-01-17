//
//  PianoTunerTests.swift
//  PianoTunerTests
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import XCTest
@testable import PianoTuner

class PianoTunerTests: XCTestCase {

    func testFrequencies() {
        let notesManager = NotesManager()
        printAllNotes(notesManager: notesManager)
    }

    func testFrequenciesChanged() {
        let notesManager = NotesManager(mainFrequency: 443.0)
        printAllNotes(notesManager: notesManager)
    }

    private func printAllNotes(notesManager: NotesManager) {
        print("\nНастройка фортепиано для основной частоты: \(notesManager.mainFrequency.defaultString)")
        for octaveType in OctaveType.allOctaveTypes {
            print("\n\(octaveType.rawValue)) \(octaveType.name)")
            for noteType in octaveType.allNotes {
                let frequency = notesManager.getFrequency(octaveType: octaveType, noteType: noteType)
                print("     \(noteType.nameWithSpaces) (\(noteType.rawValue)):\t \(frequency.defaultString)")
            }
        }
        print("\n")
    }

}
