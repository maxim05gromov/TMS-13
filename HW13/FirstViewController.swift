//
//  FirstViewController.swift
//  HW13
//
//  Created by Максим Громов on 04.08.2024.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(indexPath.row)"
        return cell ?? UITableViewCell()
    }
    
    lazy var table = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        view.addSubview(table)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
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
