//
//  APIMode.swift
//  
//
//  Created by Rodrigo Candido on 26/9/23.
//

import Foundation

/**
 `APIMode` is an enumeration representing the different API modes or environments. It is used to set up and retrieve the base URLs for each mode.

 - Usage:
    1. **Configuration**: Before making any requests, you need to configure the base URLs for the modes you are planning to use. This is typically done at the start of the app's execution.
    ```swift
    let devURL = URL(string: "https://www.google.com/dev")!
    let prodURL = URL(string: "https://www.google.com/prod")!
    APIMode.configure(urls: [.dev: devURL, .prod: prodURL])
    ```
    2. **Retrieving Base URL**: To retrieve the configured base URL for a specific mode. If it has not been configured, an error will be trigged.
    ```swift
    switch APIMode.dev.baseURL {
    case .success(let url):
        // Handle the success
        print(url)
    case .failure(let error):
        // Handle the error
        print(error.localizedDescription)
    }
    ```

 - See Also:
   `APIModeError` for handling errors when interacting with `APIMode`.
*/
public enum APIMode: String {
    /// Development mode
    case dev
    
    /// Production mode
    case prod
    
    /// Property to store the base URLs for each mode
    private static var urls: [APIMode: URL] = [:]
    
    
    /// Method to configure the base URLs for each API mode.
    /// - Parameter urls: Diccionario que contiene las URLs base para cada modo.
    public static func configure(urls: [APIMode: URL]) {
        self.urls = urls
    }
    
    /// Property returning the base URL for the current mode or an error if is not properly configured
    public var baseURL: Result<URL, APIModeError> {
        guard let url = APIMode.urls[self] else {
            return .failure(.apiModeNotConfigured)
        }
        return .success(url)
    }
}
