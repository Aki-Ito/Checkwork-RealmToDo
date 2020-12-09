//
//  SecondViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/06.
//

import UIKit
import RealmSwift

class SecondViewController: UIViewController,UITextFieldDelegate{
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var toDoLabel: UILabel!
    @IBOutlet var toDoTextField: UITextField!
    
    var scoreValue : String!
    var classScoreValue : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hantei()
        // Do any additional setup after loading the view.
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
    
    @IBAction func save(){
        
        
        let toDo = Score()
        toDo.target = toDoTextField.text!
        
        do {
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(toDo)
            })
        }catch{
            
        }
        
        self.performSegue(withIdentifier: "toCheck", sender: nil)
    }
}

