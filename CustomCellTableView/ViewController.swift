//
//  ViewController.swift
//  CustomCellTableView
//
//  Created by Thiện Tùng on 12/31/19.
//  Copyright © 2019 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let idCell1: String = "Cell1"
    let idCell2: String = "Cell2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupLayout()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Đăng kí cell có giao diện (xib)
        tableView.register(UINib(nibName: "CustomCell1", bundle: nil), forCellReuseIdentifier: idCell1)
        //Đăng kí cell không có giao diện
        tableView.register(CustomCell2.self, forCellReuseIdentifier: idCell2)
        
    }

    func setupLayout(){
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 80
        } else {
            return 100
        }
        // Nếu layout chuẩn thì dùng hàm này
        //return UITabelView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 10
        } else {
            return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: idCell1, for: indexPath) as! CustomCell1
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: idCell2, for: indexPath) as! CustomCell2
            
            return cell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Cell sử dụng file xib"
        } else {
            return "Cell không sử dụng file xib"
        }
    }
    
}
