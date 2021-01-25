//
//  ViewController.swift
//  swift_tutorial_countup
//
//  Created by 早川マイケル on 2021/01/13.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countUpLabel: UILabel!
    
    var count  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ラベルの文字を0と表示したい
        countUpLabel.text = "0"
        
    }

    @IBAction func plus(_ sender: Any) {
        // カウントアップさせたい
        count = count + 1
        
        // ラベルに文字を反映したい(数字)
        countUpLabel.text = String(count)
        
        // 10以上になったら文字色を黄色にしたい
        if count >= 10 {
            changeTextÇolor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        // カウントダウンさせたい
        count = count - 1

        // ラベルに文字を反映したい(数字)
        countUpLabel.text = String(count)

        // 0以下になったら文字色を白色にしたい
        if count <= 0 {
            resetColor()
        }
    }
    
    // 文字色を変更する関数
    func changeTextÇolor(){
        countUpLabel.textColor = .yellow
    }
    
    func resetColor(){
        countUpLabel.textColor = .white
    }
    
}

