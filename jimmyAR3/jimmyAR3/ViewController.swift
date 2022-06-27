//

//  ViewController.swift

//  JimmyAR

//

//  Created by lbms on 12/6/2022.

//



import UIKit
import RealityKit

class ViewController: UIViewController {

    @IBOutlet weak var arView: ARView!
    
    /*var arView: ARView = {
           let arView = ARView(frame
            let anchor = try! RCproj1.loadComputer()
            arView.scene.anchors.append(anchor)
           return arView
       }()
     */

    @IBAction func Scene1Button(_ sender: Any) {

        self.arView.scene.anchors.removeAll()
        let anchor = try! RCproj1.loadComputer()
        arView.scene.anchors.append(anchor)

    }
    @IBAction func Scene2Button(_ sender: Any) {

        self.arView.scene.anchors.removeAll()
        let anchor = try! RCproj1.loadScene()
        arView.scene.anchors.append(anchor)

    }


    override func viewDidLoad() {

        super.viewDidLoad()
        // Load the "Box" scene from the "Experience" Reality File
        let anchor = try! RCproj1.loadComputer()
        arView.scene.anchors.append(anchor)

        // Add the box anchor to the scene
    }

}
