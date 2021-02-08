//
//  ViewController.swift
//  ZhihuDailyCKHC
//
//  Created by CHEUNG Kog-hin Corson on 2021/2/1.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ModelDelegate {
    
    var model = Model()
    var stories = [Story]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: Constants.SCREEN, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        model.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "StoryCell")
        view.addSubview(tableView)
        
        model.getStory()
        
    }
    // MARK: - Model Methods
    
    func storiesFetched(_ stories: [Story]) {
        self.stories = stories
        tableView.reloadData()
    }
    
    // MARK: - TableView Methods
    
    var tableView = UITableView()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { stories.count }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        tableView.dequeueReusableCell(withIdentifier: Constants.STORYCELL_ID, for: indexPath)
        let title = self.stories[indexPath.row].storyTitle
        cell.textLabel?.text = title
        return cell
    }
    
}

