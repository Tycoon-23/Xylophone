//
//  ViewController.swift
//  Xylophone
//
//  Created by Aditya Virbhadra Vyavahare on 03/08/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    //var soundName: String = "null"    //1

    @IBAction func keyPressed(_ sender: UIButton) {
        //soundName = sender.titleLabel!.text! //OR
        //soundName = sender.title(for: .normal)! //OR
        //soundName = sender.currentTitle!
        
    //Fades out the button on click
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
        //playSound()   //1
        playSound(soundName: sender.title(for: .normal)!)   //2
    }
    
    //using method 1
    /*func playSound() {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }*/
    
    //using method 2
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}


/* There are two methods to achieve the result i.e playing respective sound clip on the click of the button.
 
 1. Create a new varible of dataType String and using it throughout.
 2. Modify the functon 'playSound' to be a function with input parameter.
 */
