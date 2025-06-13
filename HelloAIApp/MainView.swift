import SwiftUI

struct MainView: View {
    @State private var currentTaskIndex: Int = 0
    private let tasks = [
        "Meet the team at 2pm",
        "Review project proposal",
        "Plan weekend trip",
        "Prepare dinner ingredients"
    ]

    var body: some View {
        VStack {
            Spacer()
            Text(tasks[currentTaskIndex])
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            HStack {
                Button(action: { nextTask() }) {
                    Image(systemName: "xmark.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.red)
                }
                Spacer()
                Button(action: { nextTask() }) {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.green)
                }
            }
            .padding(.horizontal, 60)
            .padding(.bottom, 40)
        }
    }

    private func nextTask() {
        currentTaskIndex = (currentTaskIndex + 1) % tasks.count
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

