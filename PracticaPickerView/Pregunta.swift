//
//  Pregunta.swift
//  PracticaPickerView
//
//  Created by DAM on 17/11/17.
//  Copyright © 2017 DAM. All rights reserved.
//

import Foundation
public class Pregunta{
    var pregunta: String;
    var opciones: [String];
    var trueOpcion: Int;
    var actual: Int;

    
    init(pregunta: String, opciones: [String], trueOpcion: Int, actual: Int) {
        self.pregunta = pregunta
        self.opciones = opciones
        self.trueOpcion = trueOpcion
        self.actual = actual
    }
    
}
