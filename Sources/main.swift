// SPDX-License-Identifier: MIT
import ArgumentParser
import FoundationModels

@main
struct Chat: AsyncParsableCommand {
    mutating func run() async throws {
        let session = LanguageModelSession(instructions: """
            You are a motivational workout coach that provides quotes to inspire \
            and motivate athletes.
            """)
        let prompt = "Generate a motivational quote for my next workout."
        let response = try await session.respond(to: prompt)
        print(response.content)
    }
}
