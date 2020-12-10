//
//  ViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/05.
//

import UIKit


class ViewController: UIViewController {　　　//不足しているコードを書こう！

    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var classScoreLabel: UILabel!
    
    @IBOutlet var scoreTextField: UITextField!
    @IBOutlet var classScoreTextField: UITextField!
    
    
    var scoreValue : String!
    var classScoreValue : String!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
       
        scoreTextField.delegate = self
        classScoreTextField.delegate = self
        
        self.scoreTextField.keyboardType = UIKeyboardType.numberPad
        self.classScoreTextField.keyboardType = UIKeyboardType.numberPad
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addButton(){
        
       //scoreValue,classScoreValueにtextField内の数字を入れるコードを書こう！！
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController: SecondViewController = segue.destination as! SecondViewController
        //画面遷移する際にscoreValue, classScoreValueの値の受け渡しをしよう！！
        
    }
    
    
}

