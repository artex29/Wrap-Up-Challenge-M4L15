//
//  ContentView.swift
//  Wrap Up Challenge Books M4L15
//
//  Created by ANGEL RAMIREZ on 12/31/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var books:Books
    
    var body: some View {
        
      
            
           
                
                GeometryReader{geo in
                ScrollView{
                    
                    ForEach(0..<books.dataBase.count){index in
                    
                    LazyVStack(alignment: .center){
                        
                        
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color .white)
                                    .cornerRadius(20)
                                    .frame(width: 400, height: 600, alignment: .center)
                                    .shadow(color: .gray, radius: 5, x: 10, y: 5)
                               
                                
                                VStack(alignment: .leading){
                                    
                                    HStack{
                                    Text(books.dataBase[index].title)
                                        .font(.title)
                                        .multilineTextAlignment(.leading)
                                        .padding([.top, .leading, .trailing])
                                        
                                        Image(systemName: "star")
                                            .foregroundColor(Color.yellow)
                                            .padding([.top, .leading])
                     
                                    }
                                    
                                    
                                    Text(books.dataBase[index].author)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading)
                                        
                                    
                                    Image("cover\(index+1)")
                                      .resizable()
                                      .padding()
                                      .scaledToFill()
                                      .scaledToFit()
                                      .frame(width: 350, height: 500, alignment: .center)
                                    
                                }
                                

                            }
                            
                            
                        }

                    }
                    
                }
                
            }
           
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Books())
    }
}
