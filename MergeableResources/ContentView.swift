import SwiftUI
import FrameworkWithResources

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Image(FrameworkResources.image)
                .padding()
                .background(FrameworkResources.color)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
