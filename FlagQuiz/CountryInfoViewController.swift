//
//  CountryInfoViewController.swift
//  FlagQuiz
//
//  Created by 이수한 on 2018. 6. 16..
//  Copyright © 2018년 이수한. All rights reserved.
//

import UIKit

class CountryInfoViewController: UIViewController {
    @IBOutlet weak var countryTableView: UITableView!
    
    var currentFlagInfo: Array<FlagInfo> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagInfo = flagInfo.sorted(by: { $0.name < $1.name })
        currentFlagInfo = flagInfo
        
        self.hideKeyboardWhenTappedAround()
        
        if #available(iOS 11.0, *) {
            let searchController: UISearchController = UISearchController(searchResultsController: nil)
            
            searchController.obscuresBackgroundDuringPresentation = false
            
            self.navigationItem.searchController = searchController
            self.navigationItem.hidesSearchBarWhenScrolling = false
            self.navigationController?.navigationBar.prefersLargeTitles = true
            self.navigationItem.searchController?.searchBar.delegate = self
        } else {
            // Fallback on earlier versions
        }

    }

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension CountryInfoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFlagInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as! CountryInfoTableViewCell
        let target = currentFlagInfo[indexPath.row]
        
        cell.flagImageView.image = UIImage(named: target.imageName)
        cell.countryNameLabel.text = NSLocalizedString(target.name, comment: "")
        
        return cell
    }
    
}

extension CountryInfoViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        guard !searchText.isEmpty else {
            currentFlagInfo = flagInfo
            countryTableView.reloadData()
            return
        }
        
        guard let countrys = searchBar.text?.split(separator: ",") else {
            return
        }
        
        var tempFlagInfo = [FlagInfo]()
        
        currentFlagInfo.removeAll()
        for i in 0..<countrys.count {
            let countryName = countrys[i].trimmingCharacters(in: .whitespaces).lowercased()
            
            tempFlagInfo = flagInfo.filter { $0.name.lowercased().contains(countryName) }
            
            if !tempFlagInfo.isEmpty {
                for j in 0..<tempFlagInfo.count {
                    currentFlagInfo.append(tempFlagInfo[j])
                }
            }
        }
        countryTableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        currentFlagInfo = flagInfo
        countryTableView.reloadData()
    }
}
