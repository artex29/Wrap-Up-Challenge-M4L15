//
//  Books.swift
//  Wrap Up Challenge Books M4L15
//
//  Created by ANGEL RAMIREZ on 12/31/21.
//

import Foundation

class Books:ObservableObject {
    
    @Published var dataBase = [BookModel]()
    
    let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
    
    init(){
        
        if pathString != nil {
            
            let url = URL.init(fileURLWithPath: pathString!)
            
            do{
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do{
                    
                    var jsonData = try decoder.decode([BookModel].self, from: data)
                    
                    self.dataBase = jsonData
                  
                }
                catch{
                    print("Couldn't decode data")
                    
                }
            }
            catch{
               print("Couldn't create data object")
                
            }
        }
        
       
    }
    
    
    
}
