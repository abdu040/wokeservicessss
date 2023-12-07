import SwiftUI

struct SearchresultView: View {
    @StateObject var searchresultViewModel = SearchresultViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Button(action: {
                                    searchresultViewModel.nextScreen = "DashboardView"
                                }, label: {
                                    Image("img_group49")
                                })
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeWidth(41.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.Gray50))
                                Spacer()
                                Text(StringConstants.kLblSearchResult)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(112.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(9.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                Spacer()
                                Button(action: {
                                    searchresultViewModel.nextScreen = "DashboardView"
                                }, label: {
                                    Image("img_group50")
                                })
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeWidth(41.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.Gray50))
                            }
                            .frame(width: getRelativeWidth(346.0), height: getRelativeHeight(41.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(346.0), height: getRelativeHeight(41.0),
                               alignment: .leading)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        RowrectangletwentyCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(340.0), alignment: .center)
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.horizontal, getRelativeWidth(3.0))
                    }
                    .frame(width: getRelativeWidth(346.0), height: getRelativeHeight(514.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(21.53))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $searchresultViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SearchresultView_Previews: PreviewProvider {
    static var previews: some View {
        SearchresultView()
    }
}
