//
//  APIModeError.swift
//  
//
//  Created by Rodrigo Candido on 26/9/23.
//

import Foundation

/// Errors definition that may occur when interacting with APIMode.
public enum APIModeError: LocalizedError {
    
    /// Error that occurs when an APIMode has not been configured.
    case apiModeNotConfigured
  
    /// Error description
    public var errorDescription: String? {
        switch self {
        case .apiModeNotConfigured:
            return "APIMode not configured."
        }
    }
    
    /// Error reason
    public var failureReason: String? {
        switch self {
        case .apiModeNotConfigured:
            return "APIMode not configured. Before request, bases URL must be configured."
        }
    }
    
    /// Errors refactor suggestion
    public var recoverySuggestion: String? {
        switch self {
        case .apiModeNotConfigured:
            return "Call APIModeconfigure(urls: [APIMode: URL]) first."
        }
    }
}
