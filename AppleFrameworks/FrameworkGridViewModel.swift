//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Manuel Alejandro Rey Cruz on 29/05/26.
//

import SwiftUI
import Combine

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}
