

import UIKit

class HomeViewController: UIViewController {
    let trackManager: TrackManager = TrackManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trackManager.tracks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrackCollecionViewCell", for: indexPath) as? TrackCollecionViewCell else {
            return UICollectionViewCell()
        }
        
        let item = trackManager.track(at: indexPath.item)
        cell.updateUI(item: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            guard let item = trackManager.todaysTrack else {
                return UICollectionReusableView()
            }
            
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "TrackCollectionHeaderView", for: indexPath) as? TrackCollectionHeaderView else {
                return UICollectionReusableView()
            }
            
            header.update(with: item)
            header.tapHandler = { item in
                let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil)
                guard let playerVC = playerStoryboard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController else { return }
                playerVC.simplePlayer.replaceCurrentItem(with: item)
                self.present(playerVC, animated: true, completion: nil)
            }
            
            return header
        default:
            return UICollectionReusableView()
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerStoryboard = UIStoryboard.init(name: "Player", bundle: nil)
        guard let playerVC = playerStoryboard.instantiateViewController(identifier: "PlayerViewController") as? PlayerViewController else { return }
        let item = trackManager.tracks[indexPath.item]
        
        playerVC.simplePlayer.currentIndex = indexPath.row
        
        
        playerVC.simplePlayer.replaceCurrentItem(with: item)
        present(playerVC, animated: true, completion: nil)
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.bounds.width - (20 * 3))/2
        let height: CGFloat = width + 60
        return CGSize(width: width, height: height)
    }
}
