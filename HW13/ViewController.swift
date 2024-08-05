//
//  ViewController.swift
//  HW13
//
//  Created by Максим Громов on 03.08.2024.
//

import UIKit
import SnapKit
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if indexPath.row < 10{
            cell?.textLabel!.text = "\(indexPath.row)"
            cell?.detailTextLabel?.text = "\(indexPath.section)"
        
        }else{
            cell?.textLabel!.text = languages[indexPath.row - 10]
        }
        return cell ?? UITableViewCell()
    }
    let languages = ["Swift", "ObjC", "C", "CPP", "CS", "Python", "JS", "Java", "PHP", "Pascal (Hate it!!!)"]
    lazy var table = UITableView()
    
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


}

