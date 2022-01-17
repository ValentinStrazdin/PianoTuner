//
//  OctavesViewModel.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import Foundation
import CoreData

public class OctavesViewModel {
    private let viewContext: NSManagedObjectContext
    private let notesManager: NotesManager
    var octaves: [Octave] = []
    
    init(viewContext: NSManagedObjectContext = .default) {
        self.viewContext = viewContext
        self.notesManager = NotesManager(viewContext: viewContext)
        self.fetchOctaves()
        if self.octaves.count == 0 {
            self.notesManager.createDefaultNotes()
            self.fetchOctaves()
        }
    }
    
    private func fetchOctaves() {
        do {
            self.octaves = try self.viewContext.fetch(Octave.fetchRequest())
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
}
