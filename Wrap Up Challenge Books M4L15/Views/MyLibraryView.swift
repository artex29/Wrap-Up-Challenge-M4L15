//
//  MyLibraryView.swift
//  Wrap Up Challenge Books M4L15
//
//  Created by ANGEL RAMIREZ on 12/31/21.
//

import SwiftUI

struct MyLibraryView: View {
    var body: some View {
        
         VStack(alignment: .leading, spacing: 0){
             Text("My Library")
                 .font(.largeTitle)
                 .padding()
             
             ContentView()
             
         }.environmentObject(Books())
    }
}

struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView()
    }
}
