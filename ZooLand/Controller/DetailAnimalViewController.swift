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
        
        // Ajout du bouton Play de façon programmatique
        if navigationController == nil {
            let button = UIButton(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
            button.setImage(UIImage(systemName: "play"), for: .normal)
            button.tintColor = .systemOrange
            button.addTarget(self, action: #selector(setupSpeak), for: .touchUpInside)
            view.addSubview(button)
        }
    }
    @objc func setupSpeak() {
        if utterance != nil {
            if synth.isSpeaking {
                synth.stopSpeaking(at: .immediate)
            } else {
                synth.speak(utterance!)
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        synth.stopSpeaking(at: .immediate)
    }
    
    @IBAction func btnPlay(_ sender: UIBarButtonItem) {
        setupSpeak()
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
