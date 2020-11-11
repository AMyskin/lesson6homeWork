//
//  Protocol.swift
//  homeWork_1
//
//  Created by Alexander Myskin on 11.11.2020.
//  Copyright © 2020 Марат Нургалиев. All rights reserved.
//

import Foundation


protocol AlamofireServiceInterface {

    func getNews(startFrom: String, completion: @escaping ([VkFeed]) -> Void)
}
