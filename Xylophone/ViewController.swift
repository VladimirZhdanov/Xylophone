//
//  ViewController.swift
//  Xylophone
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var feedBackSound = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(named: sender.currentTitle ?? "C")
    }
    
    func playSound(named: String) {
        guard let path = Bundle.main.path(forResource: named, ofType: "wav") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            feedBackSound = try AVAudioPlayer(contentsOf: url)
            feedBackSound.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

