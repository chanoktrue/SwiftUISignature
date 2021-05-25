//
//  ContentView.swift
//  SwiftUISignature
//
//  Created by Thongchai Subsaidee on 25/5/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    let signatureView = SignatureView()
    
    var body: some View {
        NavigationView {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 2)
                .overlay(
                    signatureView
                        .padding(EdgeInsets(top: 3, leading: 3, bottom: 3, trailing: 3))
                )
                .padding()
                .navigationTitle("SignatureView")
                .navigationBarItems(trailing:
                                        
                                        HStack {
                                            Button(action: {
                                                signatureView.clear()
                                            }, label: {
                                                Image(systemName: "trash")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 30))
                                            })
                                            
                                            Button(action: {
                                                signatureView.genToImage()
                                            }, label: {
                                                Image(systemName: "square.and.arrow.up.fill")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 30))
                                            })
                                        }
                                        
     
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
