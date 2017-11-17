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
    @IBOutlet weak var lblPregunta: UILabel!
    
    let temas = ["Leyendas Europeas","Leyendas Asiaticas","Leyendas Inglesas","Leyendas Global"]
    let europeaQ = ["Quien poseyo la espada Durandal de las leyendas de Carlomagno?","Que santa lidero Francia contra Inglaterra?",""]
    let asiaticaQ = ["De que pais es la leyenda de la Yuki Onna?","Con que signo representan los asiaticos la harmonia de todo?",""]
    let inglesasQ = ["Quien orquestro la caida del reino del rey Arturo?","",""]
    let globalQ = ["global","",""]
    
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
            lblPregunta.text = europeaQ[0]
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
    }
    
}

