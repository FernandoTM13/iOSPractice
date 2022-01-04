//
//  FirstImpressión.swift
//  MyFirstApp
//
//  Created by Fernando Miguel Villegas Pancca on 22/11/21.
//

import SwiftUI

struct FirstImpressio_n: View {
    
    @State var nameN: String = "    Fernando Villegas"
    @State var apellidoN: String = "    Pancca Miguel"
    @State var emailN: String = "    fernando.villegas1@unmsm.edu.pe"
    var textoC : String = "Mi gran experiencia en Paracas con mis hijos"
    
    var body: some View {
                    
        VStack {
            Text("Mi perfil").font(.custom("Helvetica Neue", size: 30)).fontWeight(.bold)
            ZStack{
                    RoundedRectangle(cornerRadius: 40).fill(Color.white).frame(width: 650, height: 400).shadow(color: .black.opacity(0.2), radius: 10)
                
                    HStack{
                        Image("CircularP").resizable().scaledToFit().frame(width: 250, height: 250)
                        VStack{
                            Text("Nombres").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83)
                            
                            TextField("Nombre", text: $nameN ).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                            
                            Text("Apellidos").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83).padding(.top, 15)
                            
                            TextField("Nombre", text: $apellidoN ).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                            
                            Text("Correo").font(.custom("Helvetica Neue", size: 25)).fontWeight(.semibold).offset(x: -83).padding(.top, 15)
                            
                            TextField("Nombre", text: $emailN ).keyboardType(.emailAddress).frame(width: 300, height: 45).background(Color.gray.opacity(0.2)).cornerRadius(10).padding(.leading, 45)
                        }}}
            VStack {
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                }.padding(.top, 40)
                
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(color: .black.opacity(0.3), radius: 10).frame(width: 188, height: 170)
                       
                        VStack {
                            Text(textoC).font(.custom("Helvetica Neue", size: 10)).frame(width: 160, height: 30).padding(.top,0)
                            
                            Image("jungleb").resizable().frame(width: 188, height: 100).cornerRadius(10)
                            Button(action: {
                                
                            }, label: {
                                Text("Ver más").font(.custom("Helvetica Neue", size: 12))
                            })
                        }
                    }.padding()
                    
                }.padding(.top, 10)
                
            }
        }
    }
}

struct FirstImpressio_n_Previews: PreviewProvider {
    static var previews: some View {
        FirstImpressio_n()
    }
}
