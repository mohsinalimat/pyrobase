//
//  Pyrobase.swift
//  Pyrobase
//
//  Created by Mounir Ybanez on 01/05/2017.
//  Copyright © 2017 Ner. All rights reserved.
//

public class Pyrobase {
    
    internal var accessToken: String
    internal var requestPath: RequestPathProtocol
    internal var request: RequestProtocol
    internal(set) public var baseURL: String
    
    public init(baseURL: String, accessToken: String, requestPath: RequestPathProtocol, request: RequestProtocol) {
        self.baseURL = baseURL
        self.accessToken = accessToken
        self.requestPath = requestPath
        self.request = request
    }
    
    public func get(path: String, completion: @escaping (Any) -> Void) {
        request.read(path: requestPath.build(path)) { value in
            completion(value)
        }
    }
    
    public func put(path: String, value: [AnyHashable: Any], completion: @escaping (Bool, Any) -> Void) {
        
    }
    
    public func post(path: String, value: [AnyHashable: Any], completion: @escaping (Bool, Any) -> Void) {
        
    }
    
    public func patch(path: String, value: [AnyHashable: Any], completion: @escaping (Bool, Any) -> Void) {
        
    }
    
    public func delete(path: String, completion: @escaping (Bool, Any) -> Void) {
        
    }
}

extension Pyrobase {
    
    public class func create(baseURL: String, accessToken: String) -> Pyrobase {
        let requestPath = RequestPath(baseURL: baseURL, accessToken: accessToken)
        let request = Request()
        let pyrobase = Pyrobase(baseURL: baseURL, accessToken: accessToken, requestPath: requestPath, request: request)
        return pyrobase
    }
}