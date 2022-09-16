//
//  LogOutBouttonView.swift
//  StateAndDataFlow
//
//  Created by Алексей on 16.09.2022.
//

import SwiftUI

struct LogOutBouttonView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Button(action: logOut) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
    
    private func logOut() {
        user.isRegister.toggle()
    }
}



struct LogOutBouttonView_Previews: PreviewProvider {
    static var previews: some View {
        LogOutBouttonView()
    }
}
