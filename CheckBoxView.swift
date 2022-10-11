//
//  CheckBoxView.swift
//  SwiftUIDemo
//
//  Created by Cedan Misquith on 26/07/22.
//

import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool
    var body: some View {
        Image(checked ? "CheckBoxUnchecked" : "CheckBoxChecked")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}
struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }
    static var previews: some View {
        CheckBoxViewHolder()
    }
}
