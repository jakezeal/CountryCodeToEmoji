//: Playground - noun: a place where people can play

// A country emoji is created with the unicode values of its two country shorthand letters.
// Grab the unicode values of all country shorthands (example: "US") and convert it to its corresponding emoji (example: "🇺🇸")

let letterDict: [String: String] = ["A": "1f1e6",
                                    "B": "1f1e7",
                                    "C": "1f1e8",
                                    "D": "1f1e9",
                                    "E": "1f1ea",
                                    "F": "1f1eb",
                                    "G": "1F1EC",
                                    "H": "1F1ED",
                                    "I": "1F1EE",
                                    "J": "1F1EF",
                                    "K": "1F1F0",
                                    "L": "1F1F1",
                                    "M": "1F1F2",
                                    "N": "1F1F3",
                                    "O": "1F1F4",
                                    "P": "1F1F5",
                                    "Q": "1F1F6",
                                    "R": "1F1F7",
                                    "S": "1F1F8",
                                    "T": "1F1F9",
                                    "U": "1F1FA",
                                    "V": "1F1FB",
                                    "W": "1F1FC",
                                    "X": "1F1FD",
                                    "Y": "1F1FE",
                                    "Z": "1F1FF"]

let countryShorthands: [String] = ["AC",
                             "AD",
                             "AE",
                             "AF",
                             "AG",
                             "AI",
                             "AL",
                             "AM",
                             "AO",
                             "AQ",
                             "AR",
                             "AS",
                             "AT",
                             "AU",
                             "AW",
                             "AX",
                             "AZ",
                             "BA",
                             "BB",
                             "BD", "BE", "BF", "BG",
                             "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ",
                             "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CP", "CR", "CU",
                             "CV", "CW", "CX", "CY", "CZ", "DE", "DG", "DJ", "DK", "DM", "DO", "DZ", "EA", "EC", "EE",
                             "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE",
                             "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY",
                             "HK", "HM", "HN", "HR", "HT", "HU", "IC", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR",
                             "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW",
                             "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC",
                             "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT",
                             "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP",
                             "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS",
                             "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG",
                             "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ",
                             "TA", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV",
                             "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU",
                             "WF", "WS", "XK", "YE", "YT", "ZA", "ZM", "ZW"]


var emojis: [String: String] = [:]

for countryCode in countryShorthands {
    var countryUnicode = ""
    let first: String = letterDict[String(countryCode.characters.first!)]!
    let last: String = letterDict[String(countryCode.characters.last!)]!
    
    guard let firstCharCode = UInt32(first, radix: 16), let firstUnicode = UnicodeScalar(firstCharCode) else { break }
    guard let lastCharCode = UInt32(last, radix: 16), let lastUnicode = UnicodeScalar(lastCharCode) else { break }
    
    countryUnicode = "\(firstUnicode)" + "\(lastUnicode)"
    emojis[countryCode] = countryUnicode

}

print(emojis)
