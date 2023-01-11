//
//  ViewController.swift
//  CodeConstraint
//
//  Created by Леонид Шелудько on 11.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let grayView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(grayView)
        view.addSubview(redView)
        view.addSubview(yellowView)
        view.addSubview(greenView)
        
        createGrayViewConstraint()
        createRedViewConstraint()
        createYellowViewConstraint()
        createGreenViewConstraint()
    }

    private func createGrayViewConstraint() {
        grayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        grayView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        grayView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        grayView.heightAnchor.constraint(equalToConstant: 380).isActive = true
    }
    
    private func createRedViewConstraint() {
        redView.topAnchor.constraint(equalTo: grayView.topAnchor, constant: 20).isActive = true
        //redView.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        redView.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 20).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func createYellowViewConstraint() {
        yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20).isActive = true
        //redView.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        yellowView.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 20).isActive = true
        yellowView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func createGreenViewConstraint() {
        greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 20).isActive = true
        //redView.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
        greenView.leftAnchor.constraint(equalTo: grayView.leftAnchor, constant: 20).isActive = true
        greenView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

