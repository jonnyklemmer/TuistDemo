import SwiftUI
import TuistDemoFramework

public struct ContentView: View {
    public init() {}

    public var body: some View {
        ScrollView {
            VStack {
                ImageHolderView()
                Image(.happyCactus)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
