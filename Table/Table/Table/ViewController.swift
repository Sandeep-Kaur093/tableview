//
//  ViewController.swift
//  Table
//
//  Created by Dhiman on 2023-03-27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mytable: UITableView!
    var tableitems=["Abhi","kajal","simi","sandeep","harry"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytable.delegate = self
        mytable.dataSource = self
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableitems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tableitems[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected\(tableitems[indexPath.row])")
    }
    

    
}
