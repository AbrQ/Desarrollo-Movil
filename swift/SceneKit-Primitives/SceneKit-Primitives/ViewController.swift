//
//  ViewController.swift
//  SceneKit-Primitives
//
//  Created by Abraham Quezada on 29/07/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Show the world origin
        sceneView.debugOptions = [ARSCNDebugOptions.showWorldOrigin]
        
        sceneView.autoenablesDefaultLighting = true
        
        
        loadCampus()
    }
    
    func loadCampus(){
        //create new scene
        let scene = SCNScene(named: "art.scnassets/campus.scn")!
        //set the scene to the view
        sceneView.scene = scene
        
        loadMainBuilding()
        loadSidewalks()
    }
    
    func loadMainBuilding(){
        
        let node = SCNNode()
        
        //node.position = SCNVector3(0.0, 0.2, 0.0)
        
        let geometry = SCNBox(width: 3.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        
        geometry.firstMaterial?.diffuse.contents = UIColor.brown
        
        node.geometry = geometry
        
        node.scale = SCNVector3(0.5, 0.5, 0.5)
        
        let position = SCNVector3(0.0, 0.0, -5.0)
        
        node.position = position
        
        sceneView.scene.rootNode.addChildNode(node)
        
    }
    
    func loadSidewalks() {
        let node = SCNNode()
        let geometry = SCNPlane(width: 3.5, height: 1.5)
        geometry.firstMaterial?.diffuse.contents = UIColor.gray
        geometry.firstMaterial?.isDoubleSided = true
        node.geometry = geometry
        node.eulerAngles = SCNVector3(-Float.pi / 2, 0.0, 0.0)
        let position = SCNVector3(0.0, -0.5, 0.0)
        node.position = position
        sceneView.scene.rootNode.addChildNode(node)
    }
    
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
