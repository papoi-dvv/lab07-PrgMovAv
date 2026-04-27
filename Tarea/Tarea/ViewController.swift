//
//  ViewController.swift
//  Tarea
//
//  Created by Tecsup on 27/04/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var listaCulturas: [Cultura] = [
        Cultura(nombre: "Chavín", region: "Áncash", descripcion: "Cultura matriz...", imagen: "chavin"),
        Cultura(nombre: "Paracas", region: "Ica", descripcion: "Famosos por sus mantos...", imagen: "paracas")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // 3. Asignamos quién controla la tabla (si no lo hiciste en Storyboard)
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCulturas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cultura = listaCulturas[indexPath.row]
        
        cell.textLabel?.text = cultura.nombre
        cell.imageView?.image = UIImage(named: cultura.imagen)
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let culturaSeleccionada = listaCulturas[indexPath.row]
        performSegue(withIdentifier: "sgDetalle", sender: culturaSeleccionada)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetalle" {
            let pantallaDetalle = segue.destination as! DetalleViewController
            pantallaDetalle.culturaRecibida = sender as? Cultura
        }
    }
}
