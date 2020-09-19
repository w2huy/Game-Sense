//
//  ViewController.swift
//  Game Sense
//
//  Created by William Huynh on 9/18/20.
//  Copyright © 2020 wi2. All rights reserved.
//

import UIKit
import AVKit
import Vision

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    var gameTitleObserved = ""
    let captureSession = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        captureSession.addInput(input)
        
        captureSession.startRunning()
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.cornerRadius = 75/2
        button.layer.borderWidth = 5
        button.layer.borderColor = UIColor.white.cgColor
        button.frame = CGRect(x: view.center.x-75/2, y: view.center.y+150, width: 75, height: 75)
        button.addTarget(self, action: #selector(self.pressed(sender:)), for: .touchUpInside)
        view.addSubview(button)
        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueue"))
        captureSession.addOutput(dataOutput)
        
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
        guard let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        guard let model = try? VNCoreMLModel(for: VideoGameClassifier().model) else { return }
        
        let request = VNCoreMLRequest(model: model) { (finishRequest,error) in
            guard let results = finishRequest.results as? [VNClassificationObservation] else { return }
            
            guard let firstObservation = results.first else { return }
            
//            print(firstObservation.identifier, firstObservation.confidence)
            self.gameTitleObserved = firstObservation.identifier
        }
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }
    
    @objc func pressed(sender: UIButton!) {
        /*let alert = UIAlertController(title: "My Alert", message: "This is an alert.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)*/
//        captureSession.stopRunning()
        performSegue(withIdentifier: "go", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is GameDetailsViewController
        {
            let vc = segue.destination as? GameDetailsViewController
            vc?.temp = gameTitleObserved
        }
    }
    
}

