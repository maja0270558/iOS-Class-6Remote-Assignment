//
//  YouBikeViewController.swift
//  ASiC_YouBike
//
//  Created by WU CHIH WEI on 2018/2/25.
//  Copyright © 2018年 WU CHIH WEI. All rights reserved.
//

import UIKit
import MapKit

protocol StationInfo {
    
    var name: String { get }
    
    var position: String { get }
    
    var remainBikes: String { get }
}

class YouBikeViewController: UIViewController  {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var remainLabel: UILabel!
    @IBOutlet weak var locateLabel: UILabel!
    
    var selectedStationInfo : StationInfo? {
        didSet {
            titleLabel.text = selectedStationInfo?.name
            remainLabel.text = "剩"+(selectedStationInfo?.remainBikes)!+"台"
            locateLabel.text = selectedStationInfo?.position
        }
    }
    //Annoatation
    let closureClient = ClosureClient()
    //Station info
    var delegateClient = DelegateClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        delegateClient.delegate = self
        closureClient.getDataFromFile { (annoatations) in
            self.mapView.addAnnotations(annoatations)
            mapView.setRegion(MKCoordinateRegionMakeWithDistance(annoatations[0].coordinate, 1200 ,1200), animated: true)
        }
    }
}
extension YouBikeViewController : MKMapViewDelegate , DelegateClientProtocol {
    func didGetDataFromFile(stationInfo: StationInfo) {
        //Set
        selectedStationInfo = stationInfo
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        delegateClient.loadData(searchByLocate: (view.annotation?.coordinate)!)
    }
 
}
