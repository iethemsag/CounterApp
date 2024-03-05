import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var isDarkMode = false
    
    var body: some View {
        TabView {
            
            VStack {
                Text("\(count)")
                    .font(Font.system(size: 30))
                    .foregroundColor(isDarkMode ? .white : .black)
                    .padding()
                
                HStack {
                    Button(action: {
                        self.count += 1
                    }) {
                        Text("Click")
                            .padding()
                            .foregroundColor(isDarkMode ? .black : .white)
                            .background(isDarkMode ? Color.green : Color.black)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.count = 0
                    }) {
                        Text("Reset")
                            .padding()
                            .foregroundColor(isDarkMode ? .black : .white)
                            .background(isDarkMode ? Color.green : Color.black)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
            .background(isDarkMode ? Color.black : Color.white)
            .tabItem {
                Image(systemName: "1.circle")
                Text("Counter")
            }
            
            ScrollView {
                VStack {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        if let instagramURL = URL(string: "https://www.instagram.com/iethemsag/") {
                            UIApplication.shared.open(instagramURL)
                        }
                    }) {
                        Text("Visit Our Instagram")
                            .padding()
                            .foregroundColor(isDarkMode ? .black : .white)
                            .background(isDarkMode ? Color.white : Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
                .padding()
            }
            .background(isDarkMode ? Color.black : Color.white)
            .foregroundColor(isDarkMode ? Color.white : Color.black)
            .tabItem {
                Image(systemName: "gearshape")
                Text("Settings")
            }
        }
        .accentColor(isDarkMode ? .green : .black)        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
