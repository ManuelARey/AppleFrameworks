//
//  FrameworkView.swift
//  AppleFrameworks
//
//  Created by Manuel Alejandro Rey Cruz on 28/05/26.
//

import Foundation
import SwiftUI

struct FrameworkView: View{
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View{
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }

                    }

                }
            }
        }.navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework!,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
    }
}

struct FrameworkView_Previews: PreviewProvider {
    static var previews: some View{
        FrameworkView()
            .preferredColorScheme(.dark)
    }
}


struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
            
        }.padding()
    }
}
