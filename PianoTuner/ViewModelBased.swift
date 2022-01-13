//
//  ViewModelBased.swift
//  MathBooster
//
//  Created by Strazdin, Valentin on 18.11.2019.
//  Copyright © 2019 Strazdin, Valentin. All rights reserved.
//

import Foundation
import UIKit
import Reusable

public protocol ViewModelBased: AnyObject {
    associatedtype ViewModel
    var viewModel: ViewModel! { get set }
}

public extension ViewModelBased where Self: StoryboardSceneBased & UIViewController {
    
    static func instantiate(with viewModel: ViewModel) -> Self {
        let vc = instantiate()
        vc.viewModel = viewModel
        return vc
    }
    
}
