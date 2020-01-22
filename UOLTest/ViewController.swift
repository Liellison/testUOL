//
//  ViewController.swift
//  UOLTest
//
//  Created by Liellison Menezes on 21/01/20.
//  Copyright © 2020 Liellison Menezes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tabela: UITableView!
    
    var beer = Beers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
    }
    
    func downloadJson(){
        Beersclient.getGenre { (beers, erro) in
            if beers != nil{
                beers?.forEach({ (beerSingle) in
                    self.beer = beerSingle
                    print(self.beer.description)
                })
            }else{
                print(erro as Any)
            }
        }
    }


}

