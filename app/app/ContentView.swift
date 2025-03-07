

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo de pantalla
                Color(.systemGray3)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    // Imagen principal
                    Image("Principal")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .padding(.top, -30)
                    
                    // Título de la pantalla de bienvenida
                    Text("Bienvenido a Tu ToDo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding(.top, 10).padding(.bottom,50)
                    
                    
                    
                    // Botones de navegación
                    NavigationLink(destination: TareasCompletadas()) {
                        BotonMenu(texto: "Tareas Completadas", icono: "checkmark.circle.fill")
                    }
                    
                    NavigationLink(destination: TareasVencidas()) {
                        BotonMenu(texto: "Tareas Vencidas", icono: "exclamationmark.triangle.fill")
                    }
                    
                    NavigationLink(destination: TareasPorHacer()) {
                        BotonMenu(texto: "Tareas Pendientes", icono: "list.bullet")
                    }
                    
                    Spacer()
                }
                .padding()
                
                // Botón flotante para añadir tarea
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: An_adirView()) {
                            Image(systemName: "plus")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black) // Cambiado a negro
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct BotonMenu: View {
    var texto: String
    var icono: String
    
    var body: some View {
        HStack {
            Image(systemName: icono)
                .font(.title)
                .foregroundColor(.white)
            Text(texto)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, minHeight: 60)
        .background(Color.black) // Cambiado a negro
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}


#Preview {
    ContentView()
}
