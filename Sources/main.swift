// SPDX-License-Identifier: MIT
import ArgumentParser
import FoundationModels
import Foundation

@main
struct Chat: AsyncParsableCommand {
    @Option(name: .shortAndLong, help: "Locale Identifier like en-US, ja-JP")
    var locale: String? = nil

    mutating func run() async throws {
        let localeIdentifier = locale ?? Locale.current.identifier
        let session = LanguageModelSession(instructions: """
            The user's locale is \(localeIdentifier).
            You are a helpful assistant.
            """)
        print("Chai based on Apple Intelligence. Please enter your request.")
        while true {
            print("> ", separator: "", terminator: "")
            guard let prompt = readLine() else {
                return
            }
            if prompt.isEmpty {
                continue
            }
            do {
                let response = try await session.respond(to: prompt)
                print(response.content)
            } catch {
                print("A problem has occurred: \(error.localizedDescription)")
            }
        }
    }
}
