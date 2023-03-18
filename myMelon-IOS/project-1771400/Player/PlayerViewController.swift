

import UIKit
import Foundation
import AVFoundation

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var playControlButton: UIButton!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var BackwardButton: UIButton!
    @IBOutlet weak var ForwardButton: UIButton!
    @IBOutlet weak var totalDurationLabel: UILabel!
    @IBOutlet weak var ShuffleButton: UIButton!
    
    @IBOutlet weak var RepeatButton: UIButton!
    
    
    let simplePlayer = SimplePlayer.shared
    
    var timeObserver: Any?
    var isSeeking: Bool = false
    
    var willRepeat: Bool = false
    var willShuffle: Bool = false
    var check = true
    
    var currentIndexNum = 0
    
    let trackManager: TrackManager = TrackManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentIndexNum = simplePlayer.currentIndex
        updatePlayButton()
        updateTime(time: CMTime.zero)
        timeObserver = simplePlayer.addPeriodicTimeObserver(forInterval: CMTime(seconds: 1, preferredTimescale: 10), queue: DispatchQueue.main) { time in
            self.updateTime(time: time)
        }
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkStatus), userInfo: nil, repeats: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTintColor()
        updateTrackInfo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let time = CMTime(seconds: 0, preferredTimescale: 100)
        simplePlayer.seek(to: time)
        check = false
        simplePlayer.pause()
        simplePlayer.replaceCurrentItem(with: nil)
        simplePlayer.pause()
    }
    
    @IBAction func beginDrag(_ sender: UISlider) {
        isSeeking = true
    }
    
    @IBAction func endDrag(_ sender: UISlider) {
        isSeeking = false
    }
    
    @IBAction func seek(_ sender: UISlider) {
        guard let currentItem = simplePlayer.currentItem else { return }
        let position = Double(sender.value)
        let seconds = currentItem.duration.seconds * position
        let time = CMTime(seconds: seconds, preferredTimescale: 100)
        simplePlayer.seek(to: time)
    }
    
    @IBAction func togglePlayButton(_ sender: UIButton) {
        if simplePlayer.isPlaying {
            simplePlayer.pause()
        } else {
            simplePlayer.play()
            check = true
            print(simplePlayer.currentIndex)
        }
        updatePlayButton()
    }
    
    @IBAction func BackwardTouch(_ sender: UIButton) {
        if simplePlayer.currentTime > 1.0 {
            let time = CMTime(seconds: 0, preferredTimescale: 100)
            simplePlayer.seek(to: time)
        }
        else{
            var curIndex = simplePlayer.currentIndex
            let time = CMTime(seconds: 0, preferredTimescale: 100)
            simplePlayer.seek(to: time)
            if curIndex == 0 {
                curIndex = 15
                simplePlayer.currentIndex = 15
                let p = trackManager.tracks[IndexPath(row:curIndex, section:0).item]
                simplePlayer.replaceCurrentItem(with: p)
            }
            else{
                simplePlayer.currentIndex -= 1
                let p = trackManager.tracks[IndexPath(row:curIndex-1, section:0).item]
                simplePlayer.replaceCurrentItem(with: p)
            }
            
            updateTrackInfo()
        }
        check = true
        currentIndexNum = simplePlayer.currentIndex

        
    }
    @IBAction func ForwardTouch(_ sender: UIButton) {
        var curIndex = simplePlayer.currentIndex
        let time = CMTime(seconds: 0, preferredTimescale: 100)
        simplePlayer.seek(to: time)
        if curIndex == 15 {
            curIndex = 0
            simplePlayer.currentIndex = 0
            let p = trackManager.tracks[IndexPath(row:curIndex, section:0).item]
            simplePlayer.replaceCurrentItem(with: p)
        }
        else{
            simplePlayer.currentIndex += 1
            let p = trackManager.tracks[IndexPath(row:curIndex+1, section:0).item]
            simplePlayer.replaceCurrentItem(with: p)
        }
        
        updateTrackInfo()
        check = true
        currentIndexNum = simplePlayer.currentIndex

    }
    
    @IBAction func RepeatButtonToggle(_ sender: UIButton) {
        if willRepeat{
            willRepeat = false
            RepeatButton.tintColor = .lightGray
            
        }
        else{
            willRepeat = true
            RepeatButton.tintColor=UIColor(red: 28.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1)
        }
    }
    
    @IBAction func ShuffleButtonToggle(_ sender: UIButton) {
        if willShuffle{
            willShuffle = false
            ShuffleButton.tintColor = .lightGray
        }
        else{
            willShuffle = true
            ShuffleButton.tintColor=UIColor(red: 28.0/255.0, green: 255.0/255.0, blue: 0.0/255.0, alpha: 1)

        }
    }
    @IBAction func ShowLyrics(_ sender: UIButton) {
        let LyricsStoryboard = UIStoryboard.init(name: "Lyrics", bundle: nil)
        guard let LyricsVC = LyricsStoryboard.instantiateViewController(identifier: "LyricsViewController") as? LyricsViewController else { return }
        LyricsVC.index = currentIndexNum
        guard let track = simplePlayer.currentItem?.convertToTrack() else { return }
        LyricsVC.curTitle = track.title
        present(LyricsVC, animated: true, completion: nil)
    }
    
    @objc func checkStatus(){
        if check {
            if (simplePlayer.currentTime+0.1) >= simplePlayer.totalDurationTime {
                if willRepeat {
                    let time = CMTime(seconds: 0, preferredTimescale: 100)
                    simplePlayer.seek(to: time)
                    simplePlayer.play()
                }
                else if willShuffle {
                    let time = CMTime(seconds: 0, preferredTimescale: 100)
                    simplePlayer.seek(to: time)
                    let rand = Int.random(in: 0...15)
                    simplePlayer.currentIndex = rand
                    let p = trackManager.tracks[IndexPath(row:rand, section:0).item]
                    simplePlayer.replaceCurrentItem(with: p)
                    simplePlayer.play()
                    updateTrackInfo()
                }
                else {
                    var curIndex = simplePlayer.currentIndex
                    let time = CMTime(seconds: 0, preferredTimescale: 100)
                    simplePlayer.seek(to: time)
                    if curIndex == 15 {
                        curIndex = 0
                        simplePlayer.currentIndex = 0
                        let p = trackManager.tracks[IndexPath(row:curIndex, section:0).item]
                        simplePlayer.replaceCurrentItem(with: p)
                    }
                    else{
                        simplePlayer.currentIndex += 1
                        let p = trackManager.tracks[IndexPath(row:curIndex+1, section:0).item]
                        simplePlayer.replaceCurrentItem(with: p)
                    }
                    
                    updateTrackInfo()
                    simplePlayer.play()
                }
            }
            updatePlayButton()
            print(currentIndexNum)
        }
    }
    
}

extension PlayerViewController {
    func updateTrackInfo() {
        guard let track = simplePlayer.currentItem?.convertToTrack() else { return }
        thumbnailImageView.image = track.artwork
        titleLabel.text = track.title
        artistLabel.text = track.artist
    }
    
    func updateTintColor() {

        
    }
    
    func updateTime(time: CMTime) {
        currentTimeLabel.text = secondsToString(sec: simplePlayer.currentTime)
        totalDurationLabel.text = secondsToString(sec: simplePlayer.totalDurationTime)
        
        if isSeeking == false {
            timeSlider.value = Float(simplePlayer.currentTime/simplePlayer.totalDurationTime)
        }
    }
    
    func secondsToString(sec: Double) -> String {
        guard sec.isNaN == false else { return "00:00" }
        let totalSeconds = Int(sec)
        let min = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%02d:%02d", min, seconds)
    }
    
    func updatePlayButton() {
        if simplePlayer.isPlaying {
            let configuration = UIImage.SymbolConfiguration(pointSize: 40)
            let image = UIImage(systemName: "pause.fill", withConfiguration: configuration)
            playControlButton.setImage(image, for: .normal)
        } else {
            let configuration = UIImage.SymbolConfiguration(pointSize: 40)
            let image = UIImage(systemName: "play.fill", withConfiguration: configuration)
            playControlButton.setImage(image, for: .normal)
        }
    }
    
    
}
