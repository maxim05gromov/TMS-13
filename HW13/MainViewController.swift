//
//  mainViewController.swift
//  HW13
//
//  Created by Максим Громов on 04.08.2024.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "Пункт \(indexPath.row + 1)"
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        var controller: UIViewController?
        switch indexPath.row{
        case 0:
            controller = storyboard?.instantiateViewController(identifier: "FirstViewController") as! FirstViewController
            break
        case 1:
            controller = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
            break
        case 2:
            controller = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        default:
            return
        }
        if let controller{
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
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
