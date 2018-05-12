//
//  ViewController.swift
//  MVC_Ejemplo
//
//  Created by Ronald Murillo Solano on 12/5/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    var respuestaSeleccionada : Bool = false
    let allQuestions = ListQuestionsModel()
    var numeroPregunta : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Respuesta(_ sender: UIButton) {
        if(sender.tag==1){
            respuestaSeleccionada = true
        }
        else if (sender.tag==2){
            respuestaSeleccionada=false
        }
        revisarRespuesta()
    }
    
    
    func revisarRespuesta(){
        let respuestaCorrecta=allQuestions.list[numeroPregunta].respuesta
        
        if(respuestaCorrecta==respuestaSeleccionada){
            
            let alerta = UIAlertController(title: "Título", message: "Respuesta Correcta!!!",preferredStyle: UIAlertControllerStyle.alert)
            let accion = UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.default) { _ in alerta.dismiss(animated: true, completion: nil) }
            alerta.addAction(accion)
            self.present(alerta, animated: true, completion: nil)
        }
        else{
            let alerta = UIAlertController(title: "Título", message: "Respuesta Incorrecta!!!",preferredStyle: UIAlertControllerStyle.alert)
            let accion = UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.default) { _ in alerta.dismiss(animated: true, completion: nil) }
            alerta.addAction(accion)
            self.present(alerta, animated: true, completion: nil)
        }
    }

}

