/*
*  Copyright (C) 2020 Groupe MINASTE
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with this program; if not, write to the Free Software Foundation, Inc.,
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*
*/

import Foundation

public class JSONAPIDecoder: APIDecoder {
    
    /// Decode the data from JSON
    /// - Parameters:
    ///   - data: The data to decode
    ///   - type: The type to decode to
    /// - Returns: The decoded data, or nil if an error occurs
    public func decode<T>(from data: Data, as type: T.Type) -> T? where T: Decodable {
        do {
            return try JSONDecoder().decode(type, from: data)
        } catch let jsonError {
            print(jsonError)
            return nil
        }
    }
    
}
