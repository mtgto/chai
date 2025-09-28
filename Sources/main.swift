// SPDX-License-Identifier: MIT
import ArgumentParser
import FoundationModels

@main
struct Chat: AsyncParsableCommand {
    mutating func run() async throws {
        let session = LanguageModelSession(instructions: """
            あなたは、アスリートにインスピレーションを与え、やる気を起こさせるための引用を提供する、やる気を起こさせるワークアウトコーチです。
            """)
        let prompt = "次のワークアウトの動機付けのメッセージを生成します。"
        let response = try await session.respond(to: prompt)
        print(response.content)
    }
}
