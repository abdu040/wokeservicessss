import SwiftUI

struct RowrectangletwentyCell: View {
    var body: some View {
        HStack {
            Image("img_rectangle20")
                .resizable()
                .frame(width: getRelativeWidth(53.0), height: getRelativeWidth(55.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                           bottomRight: 5.0))
                .padding(.leading, getRelativeWidth(17.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsg1To99Busines)
                    .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Bluegray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(195.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                Text(StringConstants.kMsg2MinAwayBi)
                    .font(FontScheme.kPoppinsLight(size: getRelativeHeight(14.0)))
                    .fontWeight(.light)
                    .foregroundColor(ColorConstants.Bluegray901)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(173.0), height: getRelativeHeight(21.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.trailing, getRelativeWidth(10.0))
            }
            .frame(width: getRelativeWidth(195.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(11.0))
            .padding(.trailing, getRelativeWidth(57.0))
        }
        .frame(width: getRelativeWidth(338.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0, bottomRight: 20.0)
            .stroke(ColorConstants.WhiteA700,
                    lineWidth: 1))
        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                   bottomRight: 20.0)
                .fill(ColorConstants.Gray100))
        .shadow(color: ColorConstants.Black90028, radius: 8, x: 0, y: 3)
        .hideNavigationBar()
    }
}

/* struct RowrectangletwentyCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrectangletwentyCell()
 }
 } */
