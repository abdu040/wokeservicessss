import SwiftUI

struct LanguageView: View {
    @StateObject var languageViewModel = LanguageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    ZStack(alignment: .center) {
                        Image("img_group41")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(721.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Image("img_logo")
                            .resizable()
                            .frame(width: getRelativeWidth(246.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.bottom, getRelativeHeight(466.11))
                            .padding(.horizontal, getRelativeWidth(72.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(721.0),
                           alignment: .topLeading)
                    VStack(alignment: .leading, spacing: 0) {
                        Divider()
                            .frame(width: getRelativeWidth(80.0), height: getRelativeHeight(2.0),
                                   alignment: .center)
                            .background(ColorConstants.Bluegray900)
                            .padding(.top, getRelativeHeight(8.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                        Text(StringConstants.kMsgLetSClarifyY)
                            .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Bluegray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                        Text(StringConstants.kMsgWhereAreYouG)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            HStack {
                                Image("img_rectangle5")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                               bottomLeft: 2.0, bottomRight: 2.0))
                                    .padding(.leading, getRelativeWidth(23.0))
                                Text(StringConstants.kLblEngland)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                    .padding(.trailing, getRelativeWidth(18.0))
                            }
                            .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.BlueA200))
                            Spacer()
                            HStack {
                                Image("img_rectangle6")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeHeight(13.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 2.0, topRight: 2.0,
                                                               bottomLeft: 2.0, bottomRight: 2.0))
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kMsgUnitedArabAmi)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(115.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.horizontal, getRelativeWidth(7.0))
                            }
                            .frame(width: getRelativeWidth(161.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                    bottomRight: 5.0)
                                    .stroke(ColorConstants.Bluegray100,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                       bottomRight: 5.0)
                                    .fill(ColorConstants.WhiteA700))
                            .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(35.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(4.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                        Text(StringConstants.kMsgWhatLanguageD)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(214.0), height: getRelativeHeight(21.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(39.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            Text(StringConstants.kLblEnglish)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(21.0))
                                .padding(.bottom, getRelativeHeight(7.0))
                                .padding(.top, getRelativeHeight(9.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .background(ColorConstants.BlueA200)
                            Text(StringConstants.kLblArabic)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(19.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                                .padding(.top, getRelativeHeight(7.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(ColorConstants.WhiteA700)
                                .padding(.leading, getRelativeWidth(6.0))
                            Text(StringConstants.kLblFrench)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .padding(.horizontal, getRelativeWidth(19.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(79.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Bluegray100,
                                                lineWidth: 1))
                                .background(ColorConstants.WhiteA700)
                                .padding(.leading, getRelativeWidth(10.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(260.0), height: getRelativeHeight(35.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(4.0))
                        .padding(.horizontal, getRelativeWidth(17.0))
                        Button(action: {
                            languageViewModel.nextScreen = "SigninView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblContinue)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(360.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                               bottomLeft: 5.0, bottomRight: 5.0)
                                            .fill(ColorConstants.Bluegray902))
                                    .padding(.vertical, getRelativeHeight(56.0))
                                    .padding(.horizontal, getRelativeWidth(14.0))
                            }
                        })
                        .frame(width: getRelativeWidth(360.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                                   bottomRight: 5.0)
                                .fill(ColorConstants.Bluegray902))
                        .padding(.vertical, getRelativeHeight(56.0))
                        .padding(.horizontal, getRelativeWidth(14.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeWidth(390.0),
                           alignment: .bottomLeading)
                    .background(RoundedCorners(topLeft: 30.0, topRight: 30.0)
                        .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(453.91))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.BlueA100)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SigninView(),
                                   tag: "SigninView",
                                   selection: $languageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.BlueA100)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            languageViewModel.nextScreen = "SigninView"
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
