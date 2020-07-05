//
//  ViewController.swift
//  book
//
//  Created by Eren FAIKOGLU on 05.07.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    //genel Array tanimi yapiyoruz
    var numArray = [simpsons]()
    //diger func icinden erismek icin basta define
    var selectedElem : simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // altakki delegate olmaz ise bos satir cikacaktir
        table.dataSource = self
        table.delegate = self
        
        //class.swift getiriyoruz
        //class icinden objeye aliyoruz
        let one = simpsons(nameInit: "Character One", jobInit: "Engineer", imageInit: UIImage(named: "charOne")!)
        let two = simpsons(nameInit: "Character Two", jobInit: "Doctor", imageInit: UIImage(named: "charTwo")!)
        let three = simpsons(nameInit: "Character Three", jobInit: "Dentist", imageInit: UIImage(named: "charThree")!)
        let four = simpsons(nameInit: "Character Four", jobInit: "Worker", imageInit: UIImage(named: "charFour")!)
        let five = simpsons(nameInit: "Character Five", jobInit: "Sciencist", imageInit: UIImage(named: "charTwo")!)
        
        //genel Array tanimina obje ekliyoruz
        numArray.append(one)
        numArray.append(two)
        numArray.append(three)
        numArray.append(four)
        numArray.append(five)
    }
    
    //numberOfRowsInSection yazilacak
    //func = outlet olmasina gerek yok
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numArray.count
    }
    
    //cellForRowAt yazilacak
    //func = outlet olmasina gerek yok
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = numArray[indexPath.row].name
        return cell
    }
    
    //didSelectRowAt yazilacak
    //diger segue aktarimi icin
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //simpsons icinden hangisinde olundugu
        selectedElem = numArray[indexPath.row]
        //self.performsegue, tirnak icinde olmali ""
        self.performSegue(withIdentifier: "segueVCidentifier", sender: nil)
    }
    
    //prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //perform segue istedigimiz, hedefimizdeki segue ise
        if segue.identifier == "segueVCidentifier" {
            let destinationVC = segue.destination as! segueVCViewController
            //destinationda hangisine yonlenecegi, didSelectRowAt'de
            destinationVC.selectedElem = selectedElem
        }
    }
    

}

