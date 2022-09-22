//
//  SliceCollectionViewCell.swift
//  almeydaShop
//
//  Created by Anderson Almeyda on 21/09/22.
//

import UIKit

class SliceCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: SliceCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTituloLbl: UILabel!
    @IBOutlet weak var slideDescripcionLbl: UILabel!
    
    func setup(_ slide: SliderModel){
        slideImageView.image = slide.imagen
        slideTituloLbl.text = slide.titulo
        slideDescripcionLbl.text = slide.descripcion
    }
}
