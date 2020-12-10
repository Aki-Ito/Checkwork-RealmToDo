//
//  SecondViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/06.
//
import UIKit
//不足しているコードを書こう！！

class SecondViewController: UIViewController{  //不足しているコードを書こう！！
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var toDoLabel: UILabel!
    @IBOutlet var toDoTextField: UITextField!
    
    var scoreValue : String!
    var classScoreValue : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDoTextField.delegate = self
        //メソッドの実行をしましょう！！
        
    }
    
    func hantei(){
        
        let scoreFixed:Int = Int(scoreValue)!
        let classScoreFixed:Int = Int(classScoreValue)!
        let difference = scoreFixed-classScoreFixed
        
        if scoreFixed >= classScoreFixed{
            headingLabel.text = "よくできました！平均点より\(difference)点高いです！"
        }else{
            headingLabel.text = "残念！次も頑張ろう！！"
        }
        
        
        
    }
    //realmの基礎的な扱いについて
    @IBAction func save(){
        
        
    //realmのモデルクラスをインスタンス化してください
        
    //インスタンス化したモデルクラスの項目名にtoDoTextFieldの値を入れよう！！
        
    //データベースに保存しよう！！
       
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }
}
