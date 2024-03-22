//
//  ViewController.swift
//  IosFeatureDemo
//
//  Created by shoya on 2024/03/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // アニメーション画像を設定する
        let animationImage = UIImage(named: "fish.png")
        imageView.image = animationImage
    }

    @IBAction func buttonTapped(sender: UIButton) {
        // 音声ファイルを再生
        let soundUrl = URL(fileURLWithPath: Bundle.main.bundlePath).appendingPathComponent("sample.mp3")
        do {
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player.play()
        } catch {
            print("Failed")
        }

        // アニメーション
        UIView.animate(withDuration: 1.0, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
        }) { (_) in
            // 指定位置に移動後、imageViewの位置をもとに戻す
            self.imageView.transform = CGAffineTransform.identity
        }
    }
}

