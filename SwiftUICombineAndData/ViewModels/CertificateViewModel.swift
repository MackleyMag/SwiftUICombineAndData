//
//  CertificateViewModel.swift
//  SwiftUICombineAndData
//
//  Created by Mackley Magalhães da Silva on 21/11/23.
//

import Foundation
import Firebase
import FirebaseFirestore

final class CertificateViewModel: ObservableObject {
    @Published var certificates: [Certificate] = []
    
    init() {
        fetchCertificates()
    }
    
    func fetchCertificates() {
        let db = Firestore.firestore()
        
        db.collectionGroup("certificates").getDocuments { querySnapshot, error in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                if let querySnapshot = querySnapshot {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        
                        let id = data["id"] as? String ?? ""
                        let course = data["course"] as? String ?? ""
                        let dateValue = (data["date"] as? AnyObject)?.dateValue()
                        let date = dateValue?.formateDate()
                        let logo = data["logo"] as? String ?? ""
                        let instructor = data["instructor"] as? String ?? ""
                        
                        let certificate = Certificate(id: id, course: course, date: date ?? "", logo: logo, instructor: instructor)
                        print("entrou aqui")
                        self.certificates.append(certificate)
                    }
                }
            }
        }
    }
}
