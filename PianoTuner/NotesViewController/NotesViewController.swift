//
//  NotesViewController.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import UIKit
import Reusable

class NotesViewController: UITableViewController, ViewModelBased {
    public var viewModel: NotesViewModel!
    
}

extension NotesViewController: StoryboardSceneBased {
    
    // MARK: StoryboardSceneBased
    public static var sceneStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
