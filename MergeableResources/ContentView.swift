import SwiftUI
import FrameworkWithResources

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello Merged Framework Bundle:")
            Text("\(frameworkBundle.bundleURL)")
            Image(FrameworkResources.image)
                .padding()
                .background(FrameworkResources.color)
        }
        .padding()
        .onAppear {
            print(frameworkBundle.bundleURL)
        }
    }
}

#Preview {
    ContentView()
}
