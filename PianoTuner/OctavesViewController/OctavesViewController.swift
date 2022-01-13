//
//  OctavesViewController.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import UIKit
import Reusable

class OctavesViewController: UITableViewController, ViewModelBased {
    public var viewModel: OctavesViewModel! = OctavesViewModel()
    
}

extension OctavesViewController: StoryboardSceneBased {
    
    // MARK: StoryboardSceneBased
    public static var sceneStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}

