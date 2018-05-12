//
//  ListQuestionsModel.swift
//  MVC_Ejemplo
//
//  Created by Ronald Murillo Solano on 12/5/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation

class ListQuestionsModel{

    var list = [QuestionModel]()
    
    init() {
        list.append(QuestionModel(text: "Pregunta 1", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 2", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Pregunta 3", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 4", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 5", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Pregunta 6", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 7", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 8", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 9", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Pregunta 10", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 11", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 12", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Pregunta 13", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Pregunta 14", respuestaCorrecta: true))
    }
    
    
    
}
