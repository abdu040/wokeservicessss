import SwiftUI

struct DashboardView: View {
    @StateObject var dashboardViewModel = DashboardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            HStack {
                                Image("img_group42")
                                    .resizable()
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeHeight(21.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(5.0))
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .onTapGesture {
                                        dashboardViewModel.nextScreen = "MoreView"
                                    }
                                Spacer()
                                Image("img_logo")
                                    .resizable()
                                    .frame(width: getRelativeWidth(186.0),
                                           height: getRelativeHeight(18.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(7.0))
                                Spacer()
                                Button(action: {}, label: {
                                    Image("img_group13")
                                })
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeWidth(32.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.Gray50))
                            }
                            .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                        Text(StringConstants.kMsgLetSFindY)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(24.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(262.0), height: getRelativeHeight(67.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblLocation)
                                    .font(FontScheme.kPoppinsLight(size: getRelativeHeight(12.0)))
                                    .fontWeight(.light)
                                    .foregroundColor(ColorConstants.Bluegray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(51.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.trailing)
                                Text(StringConstants.kLblBirmingham)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(88.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(4.0))
                            .padding(.bottom, getRelativeHeight(5.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            Spacer()
                            Image("img_polygon2")
                                .resizable()
                                .frame(width: getRelativeWidth(26.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.trailing, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(33.0))
                        HStack {
                            ZStack(alignment: .center) {
                                Text(StringConstants.kLblBusinessType)
                                    .font(FontScheme.kPoppinsLight(size: getRelativeHeight(12.0)))
                                    .fontWeight(.light)
                                    .foregroundColor(ColorConstants.Bluegray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(19.0))
                                Text(StringConstants.kLblRestoration)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(81.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(16.14))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(37.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.bottom, getRelativeHeight(7.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            Spacer()
                            Image("img_polygon3")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 1.0, topRight: 1.0,
                                                           bottomLeft: 1.0, bottomRight: 1.0))
                                .padding(.vertical, getRelativeHeight(26.0))
                                .padding(.trailing, getRelativeWidth(18.0))
                        }
                        .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(50.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Bluegray100,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Gray50))
                        .padding(.top, getRelativeHeight(11.0))
                        Image("img_group48")
                            .resizable()
                            .frame(width: getRelativeWidth(95.0), height: getRelativeWidth(95.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(407.0))
                            .padding(.horizontal, getRelativeWidth(120.0))
                            .onTapGesture {
                                dashboardViewModel.nextScreen = "SearchresultView"
                            }
                    }
                    .frame(width: getRelativeWidth(336.0), height: getRelativeHeight(771.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(53.86))
                    .padding(.horizontal, getRelativeWidth(26.51))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MoreView(),
                                   tag: "MoreView",
                                   selection: $dashboardViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SearchresultView(),
                                   tag: "SearchresultView",
                                   selection: $dashboardViewModel.nextScreen,
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

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
