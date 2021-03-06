//
//  FyydCuration.swift
//  Podcat 2
//
//  Created by Jeanette Müller on 10.04.17.
//  Copyright © 2017 Jeanette Müller. All rights reserved.
//

import Foundation

public class FyydCuration {
    private let data:[String:Any]

    public var fyydId:Int32{
        get{
            
            if let value = data["id"] as? Int32{
                return value
            }
            return -1
        }
    }
    public var title:String?{
        get{
            
            if let value = data["title"] as? String{
                return value
            }
            return nil
        }
    }
    public var desciption:String?{
        get{
            
            if let value = data["desciption"] as? String{
                return value
            }
            return nil
        }
    }
    public var layoutImageURL: String?{
        get{
            
            if let value = data["layoutImageURL"] as? String{
                return value
            }
            return nil
        }
    }
    public var thumbImageURL: String?{
        get{
            
            if let value = data["thumbImageURL"] as? String{
                return value
            }
            return nil
        }
    }
    public var microImageURL: String?{
        get{
            
            if let value = data["microImageURL"] as? String{
                return value
            }
            return nil
        }
    }
    public var isPublic: Bool{
        get{
            
            if let pub = data["public"] as? Int{
                return pub == 1
            }
            return false
        }
    }
    public var url: String{
        get{
            
            if let url = data["url"] as? String{
                return url
            }
            return ""
        }
    }
    public var xmlURL: String{
        get{
            
            if let url = data["xmlURL"] as? String{
                return url
            }
            return ""
        }
    }
    
    public init(_ data:[String:Any]){
        self.data = data
        
        
    }
}
