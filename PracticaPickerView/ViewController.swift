//
//  ViewController.swift
//  PracticaPickerView
//
//  Created by DAM on 15/11/17.
//  Copyright © 2017 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var pView: UIPickerView!
    @IBOutlet weak var lPregunta: UILabel!
    @IBOutlet weak var bAnswer1: UIButton!
    @IBOutlet weak var bAnswer2: UIButton!
    @IBOutlet weak var bAnswer3: UIButton!
    @IBOutlet weak var bAnswer4: UIButton!
    @IBOutlet weak var lblPregunta: UILabel!
    
    var listaPreguntas = [Pregunta]()
    
    let pLE1 = Pregunta(pregunta: "Quien poseyo la espada Durandal de las legendas de Carlomago",opciones:["Astolfo","Roland","Oliver","Arpegio"] ,trueOpcion: 1, actual: 0
    )
    
    let pLE2 = Pregunta(pregunta: "Que santa lidero Francia contra Inglaterra durante la guerra de los 100 años?",opciones:["Arturia Pendragon","Bella Genaver","Jean D'Arc","Lluvia D'Envias"] ,trueOpcion: 2, actual: 0
    )

    let pLE3 = Pregunta(pregunta: "Quien es el rey de los dioses de la mitologia Nordica?",opciones:["Loki","Thor","Jotun","Odin"] ,trueOpcion: 3, actual: 0
    )
    
    let pAs1 = Pregunta(pregunta: "De que pais es la leyenda de la Yuki Onna",opciones:["China","India","Korea","Japon"] ,trueOpcion: 3, actual: 0
    )
    
    let pAs2 = Pregunta(pregunta: "Cual de los siguientes signos no representan la harmonia de todo?",opciones:["La Balanza","Cielo y la Tierra","El Equilibrio","Ying Yang"] ,trueOpcion: 0, actual: 0
    )
    
    let pAs3 = Pregunta(pregunta: "Cual de los siguientes no es uno de los Cuatros Simbolos de las constelaciones Chinas?",opciones:["El Dragon Azul","El Pajaro Bermellon","La Tortuga Verde","El Tigre Blanco"] ,trueOpcion: 2, actual: 0
    )
    
    

    
    
    let temas = ["Leyendas Europeas","Leyendas Asiaticas","Leyendas Inglesas","Leyendas Global"]
    
    let asiaticaQ = ["De que pais es la leyenda de la Yuki Onna?","Con que signo representan los asiaticos la harmonia de todo?","Cual de los siguientes no es uno de los Cuatros Simbolos de las constelaciones Chinas?"]
    let inglesasQ = ["Quien orquestro la caida del reino del rey Arturo?","Segun los mitos Irlandeses que hay detras de un arcoiris?",""]
    let globalQ = ["Cual de estos elementos no es del Wu Xing(5 elementos)?","",""]
    
    var actualNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideThings()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func hideThings(){
        bAnswer1.isHidden=true;
        bAnswer2.isHidden=true;
        bAnswer3.isHidden=true;
        bAnswer4.isHidden=true;
        
    }
    
    func showButtons(){
        bAnswer1.isHidden=false;
        bAnswer2.isHidden=false;
        bAnswer3.isHidden=false;
        bAnswer4.isHidden=false;
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return temas[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pView.isUserInteractionEnabled = false
        switch row {
        case 0:
          //  lblPregunta.text = europeaQ[0]
            break;
        case 1:
            lblPregunta.text = asiaticaQ[0]
            break;
        case 2:
            lblPregunta.text = inglesasQ[0]
            break;
        case 3:
            lblPregunta.text = globalQ[0]
            break;
        default:
            break;
        }
        showButtons()
    }
    
}

