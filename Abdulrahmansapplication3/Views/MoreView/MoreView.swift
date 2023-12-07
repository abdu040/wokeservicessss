import SwiftUI

struct MoreView: View {
    @StateObject var moreViewModel = MoreViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_logo")
                                .resizable()
                                .frame(width: getRelativeWidth(141.0),
                                       height: getRelativeHeight(14.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(13.0))
                            Spacer()
                            Button(action: {
                                moreViewModel.nextScreen = "DashboardView"
                            }, label: {
                                Image("img_group50")
                            })
                            .frame(width: getRelativeWidth(41.0), height: getRelativeWidth(41.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.Gray50))
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(41.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(41.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(49.0))
                    .padding(.leading, getRelativeWidth(28.0))
                    .padding(.trailing, getRelativeWidth(21.0))
                    Text(StringConstants.kLblEditProfile)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(75.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                    Text(StringConstants.kLblChangeLocation)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                        .onTapGesture {
                            moreViewModel.nextScreen = "LanguageView"
                        }
                    Text(StringConstants.kMsgShoeRestoratio)
                        .font(FontScheme.kPoppinsExtraLight(size: getRelativeHeight(16.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(253.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                    Text(StringConstants.kMsgRentalsConci)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(164.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                    Text(StringConstants.kMsgServicedAccomm)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                    Text(StringConstants.kLblGiftConcierge)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(116.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                    Text(StringConstants.kLblLogout)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Red500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(55.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(348.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                        .onTapGesture {
                            moreViewModel.nextScreen = "SigninView"
                        }
                    Text(StringConstants.kMsgAppVersion11)
                        .font(FontScheme.kPoppinsLight(size: getRelativeHeight(12.0)))
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.Bluegray901)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(18.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(17.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LanguageView(),
                                   tag: "LanguageView",
                                   selection: $moreViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SigninView(),
                                   tag: "SigninView",
                                   selection: $moreViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: DashboardView(),
                                   tag: "DashboardView",
                                   selection: $moreViewModel.nextScreen,
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

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
