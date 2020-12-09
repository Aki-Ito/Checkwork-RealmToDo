//
//  ZeroViewController.swift
//  Checkwork-RealmToDo
//
//  Created by 伊藤明孝 on 2020/12/08.
//

import UIKit
import RealmSwift

class ZeroViewController: UIViewController {

    
    @IBOutlet var headingLabel : UILabel!
    @IBOutlet var realmLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        
        let nextTarget = realm.objects(Score.self).first
        
        
        
        realmLabel.text = nextTarget?.target
              
        }
        
    
        // Do any additional setup after loading the view.
    
    @IBAction func nextButton(){
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
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
