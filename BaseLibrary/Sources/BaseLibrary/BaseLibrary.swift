import Foundation

public struct BaseLibrary {
    public static func getReadme() -> String {
        let url = Bundle.module.url(forResource: "readme", withExtension: "md")!
        return  try! String(contentsOf: url)
    }
}
