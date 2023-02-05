//
//  Model.swift
//  iOS8-HW14-DubinaRoman
//
//  Created by admin on 05.02.2023.
//

import Foundation

struct Model {
    var image: String
    var firstLabel: String
    var secondLabel: String
}

class MockModel {
    private let mockCollection = [
                        [Model(image: "image1", firstLabel: "Недавние", secondLabel: ""),
                        Model(image: "image2", firstLabel: "Избранное", secondLabel: ""),
                        Model(image: "image3", firstLabel: "Документы", secondLabel: ""),
                        Model(image: "image4", firstLabel: "Instagram", secondLabel: ""),
                        Model(image: "image5", firstLabel: "WhatsApp", secondLabel: ""),
                        Model(image: "image6", firstLabel: "Viber", secondLabel: ""),
                        Model(image: "image7", firstLabel: "Tellegram", secondLabel: "")],
                        
                        [Model(image: "image8", firstLabel: "Семья", secondLabel: "Автор: Руслан Д")],
                        
                        [Model(image: "video", firstLabel: "Видео", secondLabel: ""),
                        Model(image: "person.crop.square", firstLabel: "Селфи", secondLabel: ""),
                        Model(image: "livephoto", firstLabel: "Фото Live Photos", secondLabel: ""),
                        Model(image: "cube", firstLabel: "Портреты", secondLabel: ""),
                        Model(image: "pano", firstLabel: "Панорамы", secondLabel: ""),
                        Model(image: "square.stack.3d.down.right", firstLabel: "Серии", secondLabel: ""),
                        Model(image: "camera.viewfinder", firstLabel: "Снимки экрана", secondLabel: ""),
                        Model(image: "smallcircle.filled.circle", firstLabel: "Запись экрана", secondLabel: ""),
                        Model(image: "square.stack.3d.forward.dottedline", firstLabel: "Анимированные", secondLabel: ""),],
                        
                        [Model(image: "square.and.arrow.down", firstLabel: "Импортированные", secondLabel: ""),
                        Model(image: "eye.slash", firstLabel: "Скрытые", secondLabel: ""),
                        Model(image: "trash", firstLabel: "Недавно удаленные", secondLabel: "")]
                                ]
    
    private let mockTable = [[]]
    
    func getData() -> [[Model]] {
        return mockCollection
    }
}


