//
//  APIPath.swift
//  
//
//  Created by Rodrigo  Candido on 28/9/23.
//

/**
 Path to an endpoint in the API.
 
 This protocol is used todefine different routes in the API and can be used in combination with `URLRequestBuilder` to construct API requests.
 to construct API requests.

 How to implement:

 ```swift
 enum ArticlePaths: APIPath {
    case all
    case single(id: Int)

    var path: String? {
        switch self {
        case .all:
            return "articles"
        case .single(let id):
            return "article/\(id)"
        }
    }
 }
 ```

 How to use:

 ```swift
 let allArticlesResquestPaht = ArticlePaths.all.path
 let singleArticleRequestPath = ArticlePaths.single(id: 42).path
 ```
 */
public protocol APIPath {
    /// The path to the endpoint. Returns `empty string` if no additional path is required,
    /// as in the case of some images or resources.
    var path: String { get }
}

/// `CommonPaths` is an enumeration containing common paths used in the API.
/// In this case, define a `none` route which represents the absence of an additional route.
///
/// How to use:
///
/// ```swift
/// let noAdditionalPath = CommonPaths.none.path // Returns `""`
/// ```
public enum CommonPaths: APIPath {
    
    /// Represents the absence of an additional route.
    case none
    
    public var path: String {
        switch self {
        case .none:
            return ""
        }
    }
}
