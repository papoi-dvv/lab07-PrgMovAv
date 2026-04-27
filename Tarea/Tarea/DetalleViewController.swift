//
//  DetalleViewController.swift
//  Tarea
//
//  Created by Tecsup on 27/04/26.
//

import UIKit

class DetalleViewController: UIViewController {
    @IBOutlet weak var imgCultura: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblRegion: UILabel!
    @IBOutlet weak var txtDescripcion: UILabel!

    var culturaRecibida: Cultura?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Llenamos la vista con los datos recibidos
        if let cultura = culturaRecibida {
            lblNombre.text = cultura.nombre
            lblRegion.text = cultura.region
            txtDescripcion.text = cultura.descripcion
            imgCultura.image = UIImage(named: cultura.imagen)
            self.title = cultura.nombre // Título en la barra de navegación
        }
    }
}
