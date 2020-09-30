//
//  DetailAnimalViewController.swift
//  ZooLand
//
//  Created by Rodolphe DUPUY on 30/09/2020.
//

import UIKit
import AVFoundation

class DetailAnimalViewController: UIViewController {

    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var txtDetail: UITextView!
    
    var animal: Animal!
    
    var synth = AVSpeechSynthesizer()
    var utterance: AVSpeechUtterance?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblDetail.text = animal.name
        imgDetail.image = UIImage(named: animal.imageString)
        txtDetail.text = animal.desc
        
        utterance = AVSpeechUtterance(string: animal.desc)
        utterance?.voice = AVSpeechSynthesisVoice(language: "fr-FR")
        utterance?.rate = 0.5
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        synth.stopSpeaking(at: .immediate)
    }
    
    @IBAction func btnPlay(_ sender: UIBarButtonItem) {
        if utterance != nil {
            if synth.isSpeaking {
                synth.stopSpeaking(at: .immediate)
            } else {
                synth.speak(utterance!)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
