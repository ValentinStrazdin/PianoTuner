//
//  ViewController.swift
//  PianoTuner
//
//  Created by Valentin Strazdin on 08.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frequencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(frequencyDetected(_:)),
                                               name: .frequencyDetected,
                                               object: nil)
    }

    @objc func frequencyDetected(_ notification: Notification) {
        guard let dict = notification.userInfo as NSDictionary?,
              let frequencyString = dict[kMAX_HZ_KEY] as? String else {
                  return
              }
        self.frequencyLabel.text = frequencyString
    }

}

