//
//  LogProxyService.swift
//  homeWork_1
//
//  Created by Alexander Myskin on 11.11.2020.
//  Copyright © 2020 Марат Нургалиев. All rights reserved.
//

import Foundation

class LogProxyService: AlamofireServiceInterface {
    
 
    
    let newsService: AlamofireService
    init(newsService: AlamofireService) {
        self.newsService = newsService
    }
    
    func getNews(startFrom: String, completion: @escaping ([VkFeed]) -> Void) {
        newsService.getNews(startFrom: startFrom, completion: completion)
        
        print("Log news startFrom = \(startFrom)")
    }


}
