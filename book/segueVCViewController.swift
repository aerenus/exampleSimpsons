//
//  segueVCViewController.swift
//  book
//
//  Created by Eren FAIKOGLU on 05.07.2020.
//  Copyright © 2020 Eren FAIKOGLU. All rights reserved.
//

import UIKit

class segueVCViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    var selectedElem : simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelOne.text = selectedElem?.name
        labelTwo.text = selectedElem?.job
        image.image = selectedElem?.image
        // Do any additional setup after loading the view.
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
