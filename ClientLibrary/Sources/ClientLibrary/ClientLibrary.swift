import BaseLibrary

public struct ClientLibrary {
    public static func getContents() -> String {
        BaseLibrary.getReadme()
    }
}
