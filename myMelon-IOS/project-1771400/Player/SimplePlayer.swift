

import AVFoundation

class SimplePlayer {
    static let shared = SimplePlayer()
    
    private let player = AVPlayer()
    
    var currentIndex = 0
    
    var timeTrigger = true
    
    var currentTime: Double {
        return player.currentItem?.currentTime().seconds ?? 0
    }
    
    var totalDurationTime: Double {
        return player.currentItem?.duration.seconds ?? 0
    }
    
    var isPlaying: Bool {
        return player.isPlaying
    }
    
    var currentItem: AVPlayerItem? {
        return player.currentItem
    }
    
    init() {}
    
    func pause() {
        player.pause()
    }
    
    func play() {
        player.play()
    }
    
    func seek(to time:CMTime) {
        player.seek(to: time)
    }
    
    func replaceCurrentItem(with item: AVPlayerItem?) {
        player.replaceCurrentItem(with: item)
        player.play()
    }
    
    func addPeriodicTimeObserver(forInterval: CMTime, queue: DispatchQueue?, using: @escaping (CMTime) -> Void) {
        player.addPeriodicTimeObserver(forInterval: forInterval, queue: queue, using: using)
    }
}
