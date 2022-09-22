//
//  SliceViewController.swift
//  almeydaShop
//
//  Created by Anderson Almeyda on 21/09/22.
//

import UIKit

class SliceViewController: UIViewController {
    
    // conectando el manda de los masna's
    @IBOutlet weak var CollectionView: UICollectionView!
    
    @IBOutlet weak var BtnSiguiente: UIButton!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    // creando un slide de mi modeli de slides masnaa
    var slides: [SliderModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            SliderModel(
                titulo: "Hola mano",
                descripcion: "Esto es una descripción corta",
                imagen: #imageLiteral(resourceName: "slide1")),
            SliderModel(
                titulo: "Hola mano2",
                descripcion: "Esto es una descripción corta2",
                imagen: #imageLiteral(resourceName: "slide2")),
        ]
        /*
        CollectionView.delegate = self
        CollectionView.dataSource = self
         */
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSiguienteOnClick(_ sender: UIButton) {
        
    }
}

extension SliceViewController:
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SliceCollectionViewCell.identifier, for: indexPath) as! SliceCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    // width y height de las celdas del slider
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
