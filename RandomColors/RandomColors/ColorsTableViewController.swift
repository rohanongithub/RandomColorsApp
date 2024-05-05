 //
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by Rohan on 28/04/24.
//

import UIKit

class ColorsTableViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
    
    //adding colors to array
    
    
    
    var colors: [UIColor] = []
    
      
    
    func addRandomColors(){
        for _ in 0..<5000{
            colors.append(createRandomColor())
        }
    }
    
    
    
    
    
    func createRandomColor() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0..<1),
                                  green: CGFloat.random(in: 0..<1),
                                  blue: CGFloat.random(in: 0..<1),
                                  alpha: 1)
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailViewController
        destVC.color = sender as? UIColor
    }
    
    
    
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    //delegate method⬇️
    /*Delegate methods are something that automatically get called when needed
     They wait for some action to happen and when that happens, they run automatically*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorcell") else{
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    
        
      
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailViewController",
                     sender: color )
    }
}
