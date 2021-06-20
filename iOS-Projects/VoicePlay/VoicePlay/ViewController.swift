//
//  ViewController.swift
//  VoicePlay
//
//  Created by Дастан Махутов on 16.05.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var voiceSwitch: UISwitch!
    
    var player: AVAudioPlayer! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: RoundButton) {
        if voiceSwitch.isOn {
            playSound(soundName: "m\(sender.currentTitle!.lowercased())")
        } else {
            playSound(soundName: sender.currentTitle!.lowercased())
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    @IBAction func switched(_ sender: Any) {
        print(voiceSwitch.isOn)
    }
}

