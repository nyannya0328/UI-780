//
//  UI_780App.swift
//  UI-780
//
//  Created by nyannyan0328 on 2022/10/27.
// n

import SwiftUI

@main
struct UI_780App: App {
    var body: some Scene {
        MenuBarExtra {
            
            MainView()
        } label: {
             Image(systemName: "suit.heart")
        }
        .menuBarExtraStyle(.window)

    }
    @ViewBuilder
    func MainView ()->some View{
     
        Grid(horizontalSpacing: 15,verticalSpacing: 15) {
            
            GridRow(alignment:.top) {
                
                
                VStack(spacing:13){
                    
                    ControlView(icon: "wifi.circle.fill", title: "Wifi", subTitle: "Home Wifti")
                    
                    ControlView(icon: "wave.3.right.circle.fill", title: "Bluetooth", subTitle: "Magic Keyboad")
                    
                    ControlView(icon: "airplayvideo.circle", title: "Air Drop", subTitle: "Contact Only")
                    
                    
                }
                .padding(13)
                .background{
                 
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.ultraThinMaterial)
                }
                .borderView()
                
                Grid(verticalSpacing: 12) {
                    
                    GridRow{
                        
                        HStack(spacing:15){
                            
                            Image(systemName: "moon.circle.fill")
                                .font(.title3)
                                .symbolRenderingMode(.multicolor)
                                .foregroundStyle(.purple, .primary)
                            
                            
                            Text("Do not Disturb")
                        }
                          .frame(maxWidth: .infinity,alignment: .leading)
                          .padding(12)
                        .background{
                         
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.ultraThinMaterial)
                        }
                        .borderView()
                      
                    }
                    .gridCellColumns(2)
                    
                    GridRow{
                        
                        subControlView(icon: "rectangle.3.group", title: "Stage\nManger")
                        
                        subControlView(icon: "rectangle.fill.on.rectangle.fill", title: "Screen\nMirroring")
                     
                        
                    }
                  
                
                  
                  
              
                    
                    
                }
                .gridCellUnsizedAxes(.vertical)
           
                
                
                
                
                
                
            }
            
            
            GridRow{
                
                
                VStack{
                    DisableSpeaker(icon: "sun.max", title: "Display")
                    
                    
                    DisableSpeaker(icon: "airpods.gen3", title: "Sound")
                    
                }
                
                
            }
            .gridCellColumns(2)
            
        }
        .padding(10)
        .frame(width: 350)
        
        
    }
    @ViewBuilder
    func DisableSpeaker (icon : String,title :  String)->some View{
        
        VStack(alignment:.leading){
            
            Text(title)
                .font(.title3.weight(.semibold))
            
            ZStack(alignment: .leading) {
                
                Capsule()
                    .fill(.white.opacity(0.6))
                
                 Image(systemName: icon)
                    .foregroundStyle(.ultraThinMaterial)
                    .padding(.leading,8)
                    
                
            }
            .frame(height:25)
        }
        .padding(15)
        .background{
         
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.ultraThinMaterial)
        }
        .borderView()
        
    }
    @ViewBuilder
    func subControlView (icon : String,title : String)->some View{
        
        
        VStack(spacing: 13) {
            
            
             Image(systemName: icon)
                .font(.title.weight(.semibold))
            
            Text(title)
                .font(.caption)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            
        }
          .frame(maxWidth: .infinity, maxHeight: .infinity)
          .background{
           
              RoundedRectangle(cornerRadius: 10, style: .continuous)
                  .fill(.ultraThinMaterial)
          }
          .borderView()
        
    }
    
    @ViewBuilder
    func ControlView (icon : String,title : String,subTitle : String)->some View{
        
           
        HStack(spacing:5){
                 Image(systemName: icon)
                    .font(.largeTitle)
                    .symbolRenderingMode(.multicolor)
                    .foregroundStyle(.blue, .white)
                
                VStack(alignment: .leading,spacing: 1) {
                    
                    Text(title)
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.white)
                    
                    Text(subTitle)
                        .font(.caption.weight(.semibold))
                        .foregroundColor(.gray)
                }
                
            }
            
            
        
          .frame(maxWidth: .infinity,alignment: .leading)
        
    }
    
}

extension View{
    
    @ViewBuilder
    func borderView ()->some View{
        
     
        self
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .shadow(color: .black.opacity(0.1), radius: 5,x:5,y:5)
            .shadow(color: .black.opacity(0.1), radius: 5,x:-5,y:-5)
    }
}
