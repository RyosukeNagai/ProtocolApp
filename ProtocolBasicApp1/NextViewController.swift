//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by 長井崚介 on 2021/01/27.
//

import UIKit

//仕様書
protocol CatchProtocol {
    
    //規則を決めるどのメソッドなのか記述
    func catchData(count:Int)
    
}

class NextViewController: UIViewController {
    
    //カウントアップラベル
    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    var delegate:CatchProtocol?
     
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusAction(_ sender: Any) {
        
        count = count + 1
        //キャスト
        label.text = String(count)
        
    }
    
    
    @IBAction func back(_ sender: Any) {
        
        //デリゲートメソッドを任せたクラスで発動させる
        delegate?.catchData(count: count)
        dismiss(animated: true, completion: nil)
        
        
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
