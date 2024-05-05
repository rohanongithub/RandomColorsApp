//
//  ColorsDetailViewController.swift
//  RandomColors
//
//  Created by Rohan on 28/04/24.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = color ?? .blue

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
