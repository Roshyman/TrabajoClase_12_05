//
//  PreguntasRespuestasController.swift
//  MVC_Ejemplo
//
//  Created by Ronald Murillo Solano on 12/5/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation
import UIKit


class ReguntasRespuestasController: UIViewController  , UITableViewDataSource, UITableViewDelegate {
    let allQuestions = ListQuestionsModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allQuestions.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text = allQuestions.list[indexPath.row].pregunta
        //cell.imageView!.image = UIImage(named: equipos[indexPath.row])
        if (allQuestions.list[indexPath.row].respuesta == true)
        {
            cell.detailTextLabel?.text = "Si"
        }
        else if (allQuestions.list[indexPath.row].respuesta == false){
            cell.detailTextLabel?.text = "No"
        }
        
        
        
        return cell
    }
    
    
    
    
}
