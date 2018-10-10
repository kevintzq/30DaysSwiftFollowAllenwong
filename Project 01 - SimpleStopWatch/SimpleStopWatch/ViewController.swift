//
//  ViewController.swift
//  SimpleStopWatch
//
//  Created by 卓奇 屠 on 2018/10/8.
//  Copyright © 2018年 卓奇 屠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var counter = 0.0
    var isPlaying = false
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = String(counter)
    }

    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        isPlaying = false
        counter = 0.0
        timeLabel.text = String(counter)
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        
    }
    
    @IBAction func playTapped(_ sender: Any) {
        if isPlaying {
            return
        }
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        isPlaying = false
    }
    
    @objc func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f",  counter)
    }
    
}

