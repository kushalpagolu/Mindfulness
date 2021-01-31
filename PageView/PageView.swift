import SwiftUI

struct PageView<Page: View>: View {
    @EnvironmentObject var seasonData: ModelData
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            NavigationLink(destination: IssuesView(issueData: IssueData.data)){
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
            }
            .navigationTitle("PICK A SEASON")
            }
    }
    }

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PageView(pages: ModelData().features.map { SeasonCard(seasons: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
                .environmentObject(ModelData())
    }
}
}
