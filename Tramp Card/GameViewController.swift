//
//  GameViewController.swift
//  Tramp Card
//
//  Created by Kohagi on 2021/12/12.
//

import UIKit

class GameViewController: UIViewController {
    
    //乱数入れるためのInt型の変数を用意
    var number: Int!
    
    
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //0から52までランダムな（乱数）を発生させる
        number = Int.random(in: 0...52)
        
        cardImageView.image = UIImage(named: trumpImageArray[number])
    }
    @IBAction func migi(){
        
        
        
        let image = UIImage(named: trumpImageArray[number]) // hogeImageという名前の画像
        button.setImage(image, for: .normal) // 背景に画像をset
        
    }
    
    
    @IBAction func hidari(){
        
        let image = UIImage(named: trumpImageArray[number]) // hogeImageという名前の画像
        hbutton.setImage(image, for: .normal) // 背景に画像をset
        
        
    }
    
    // Do any additional setup after loading the view.
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
}
