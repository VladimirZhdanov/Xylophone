//
//  SomeCustomBtn.swift
//  Xylophone
//

import Foundation
import UIKit

class SomeCustomBtn: UIButton {
override open var isHighlighted: Bool {
    didSet {
        
        if isHighlighted {
            alpha = 0.5
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                //Bring's sender's opacity back up to fully opaque.
                self.alpha = 1.0
            }
        }
        
    }
}
}
