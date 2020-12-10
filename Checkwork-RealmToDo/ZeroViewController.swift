//
//  ZeroViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/08.
//
//ここのファイルはいじらなくて良いよ！
import UIKit
import RealmSwift

class ZeroViewController: UIViewController {

    
    @IBOutlet var headingLabel : UILabel!
    @IBOutlet var realmLabel : UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        //realmの値取り出し
        let realm = try! Realm()
        
        let nextTarget = realm.objects(Score.self)
        
        
        
        realmLabel.text = nextTarget?.target
              
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
