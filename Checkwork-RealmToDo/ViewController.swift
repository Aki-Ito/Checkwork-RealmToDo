//
//  ViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/05.
//

import UIKit
import RealmSwift

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var classScoreLabel: UILabel!
    
    @IBOutlet var scoreTextField: UITextField!
    @IBOutlet var classScoreTextField: UITextField!
    
    
    var scoreValue : String!
    var classScoreValue : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        scoreTextField.delegate = self
        classScoreTextField.delegate = self
        
        self.scoreTextField.keyboardType = UIKeyboardType.numberPad
        self.classScoreTextField.keyboardType = UIKeyboardType.numberPad
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addButton(){
        
        scoreValue = scoreTextField.text!
        classScoreValue = classScoreTextField.text!
        //画面遷移のコード
        self.performSegue(withIdentifier: "Second", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController: SecondViewController = segue.destination as! SecondViewController
        secondViewController.scoreValue = self.scoreValue
        secondViewController.classScoreValue = self.classScoreValue
        
    }
    
    
}

