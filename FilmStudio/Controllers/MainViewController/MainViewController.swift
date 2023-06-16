//
//  MainViewController.swift
//  FilmStudio
//
//  Created by MacBook on 16.06.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    //Iboutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //Viewmodel:
    var viewModel : MainViewModel = MainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        // Do any additional setup after loading the view.
    }
    
    func configView(){
        self.title = "Main View"
        
        setUpTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData() 
        
        
    }


}
