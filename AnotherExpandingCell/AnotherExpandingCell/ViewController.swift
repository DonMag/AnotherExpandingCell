//
//  ViewController.swift
//  AnotherExpandingCell
//
//  Created by Don Mag on 8/10/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {
	
	@IBOutlet var mLabel: UILabel!
	@IBOutlet var sLabel: UILabel!
	@IBOutlet var theImageView: UIImageView!
	
}

class SimpleTableViewController: UITableViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.estimatedRowHeight = 100
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleTableViewCell", for: indexPath) as! SimpleTableViewCell
		
		switch indexPath.row {
		case 1:
			cell.mLabel.text = "This text will auto-word-wrap to at least two lines."
			break
		case 2:
			cell.mLabel.text = "This text will auto-word-wrap to a bunch of lines. There is enough text here to make the label expand vertically so that, including the single-line label, it will be taller than the image."
			break
		default:
			cell.mLabel.text = "Very short text"
			break
		}
		
		cell.sLabel.text = "Aug 8, 2018 18:59"
		
		cell.theImageView.image = UIImage(named: "img\(indexPath.row + 1)")
		
		return cell
	}
	
}

