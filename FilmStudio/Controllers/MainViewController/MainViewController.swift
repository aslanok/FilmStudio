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
    @IBOutlet weak var activitiyIndicator: UIActivityIndicatorView!
    
    //Viewmodel:
    var viewModel : MainViewModel = MainViewModel()
    
    //variables
    var cellDataSource : [MovieTableCellViewModel] = [MovieTableCellViewModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
        bindViewModel()
        tableView.separatorStyle = .none
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configView(){
        self.title = "Top Trending Movies"
        setUpTableView()
    }
    
    func bindViewModel(){
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activitiyIndicator.startAnimating()
                } else {
                    self.activitiyIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
        
    }

}
