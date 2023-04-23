//
//  APIData+CoreDataProperties.swift
//  ChatEmotes MessagesExtension
//
//  Created by Chris Rudel on 4/16/23.
//
//

import Foundation
import CoreData


extension APIData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<APIData> {
        return NSFetchRequest<APIData>(entityName: "APIData")
    }

    @NSManaged public var data: String?
    @NSManaged public var date: Date?

}

extension APIData : Identifiable {

}
