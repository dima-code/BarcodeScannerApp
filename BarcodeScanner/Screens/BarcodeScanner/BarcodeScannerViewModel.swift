//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Dmitrii Eselidze on 04.06.2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String{
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color{
        scannedCode.isEmpty ? .red : .green
    }
}
