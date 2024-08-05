//
//  SecondViewController.swift
//  HW13
//
//  Created by Максим Громов on 04.08.2024.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = languages[indexPath.row]
        return cell ?? UITableViewCell()
    }
    
    lazy var table = UITableView()
    let languages = ["Swift", "ObjC", "C", "CPP", "CS", "Python", "JS", "Java", "PHP", "Pascal (Hate it!!!)"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalTo(view)
        }
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
