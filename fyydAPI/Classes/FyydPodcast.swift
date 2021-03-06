//
//  FyydPodcast.swift
//  Podcat 2
//
//  Created by Jeanette Müller on 05.04.17.
//  Copyright © 2017 Jeanette Müller. All rights reserved.
//

import Foundation

public class FyydPodcast {
    private let data:[String:Any]
    
    public var feed: String{
        get{
            
            if let feed = data["xmlURL"] as? String{
                return feed
            }else if let feed = data["xml_url"] as? String{
                return feed
            }
            return ""
        }
    }
    public var title       : String{
        get{
            if let t = data["title"] as? String{
                return t
            }
            return ""
        }
    }
    public var image       : String?{
        get{
            
            if let image = data["imgURL"] as? String, !image.isEqual(""){
                return image
            }else if let image = data["img_url"] as? String, !image.isEqual(""){
                return image
            }
            return nil
        }
    }
    public var language    : String?{   get{ return data["language"] as? String } }
    public var www         : String?{
        get{
            
            if let html = data["htmlURL"] as? String, !html.isEqual(""){
                return html
            }else if let html = data["html_url"] as? String, !html.isEqual(""){
                return html
            }
            return nil
        }
    }
    public var copyright   : String?{   get{ return data["author"] as? String } }
    public var text        : String?{   get{ return data["description"] as? String } }
    public var summary     : String?{   get{ return data["subtitle"] as? String } }
    
    public var episodesCount: Int {
        get{
            if let count = data["count_episodes"] as? Int{
                return count
            }
            return 0
        }
    }
    
    public var fyydUrl     : String?{
        get{
            if let url = data["fyydURL"] as? String, !url.isEqual(""){
                return url
            }else if let url = data["url_fyyd"] as? String, !url.isEqual(""){
                return url
            }else if self.fyydId > 0{
                return String(format: "https://fyyd.de/podcast/%d", self.fyydId)
            }
            return nil
        }
    }
    public var fyydId      : Int32{
        get{
            if let id = data["id"] as? Int32{
                return id
            }
            return -1
        }
    }
    public var fyydSlug    : String?{   get{ return data["slug"] as? String } }
    
    
    
    init(_ data:[String:Any]){
        self.data = data
        
        
    }
}
