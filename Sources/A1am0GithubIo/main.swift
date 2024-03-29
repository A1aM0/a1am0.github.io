import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct A1am0GithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "A1am0GithubIo"
    var description = "A description of A1am0GithubIo"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try A1am0GithubIo().publish(using: [.addMarkdownFiles(), .copyResources(), .generateHTML(withTheme: .foundation), .generateSiteMap(), .deploy(using: .gitHub("A1aM0/a1am0.github.io", branch: "gh-pages", useSSH: true))])
