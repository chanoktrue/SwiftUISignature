//
//  SignatureView.swift
//  SwiftUISignature
//
//  Created by Thongchai Subsaidee on 25/5/2564 BE.
//

import SwiftUI
import SwiftSignatureView

struct SignatureView: UIViewRepresentable {

    let signatureView = SwiftSignatureView()
    
    func makeUIView(context: Context) -> SwiftSignatureView{
        return signatureView
    }
    
    func updateUIView(_ uiView: SwiftSignatureView, context: Context) {
        
    }
    
    func clear() {
        signatureView.clear()
    }
    
    func genToImage() {
        let image = signatureView.getCroppedSignature() ?? UIImage()
        print(image)
    }
    
}
