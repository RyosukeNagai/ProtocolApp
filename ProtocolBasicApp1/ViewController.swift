//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by 長井崚介 on 2021/01/27.
//

import UIKit

//プロトコルを宣言
class ViewController: UIViewController,CatchProtocol {
    
    
    @IBOutlet weak var label: UILabel!
    
    var count = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    func catchData(count: Int) {
        label.text = String(count)
    }
    
    
    @IBAction func next(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        nextVC.delegate = self
        
        
    }
    

}

