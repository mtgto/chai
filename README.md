chai
====

An AI chat software using the [Apple's FoundationModels framework](https://developer.apple.com/documentation/foundationmodels) for macOS 26+.
This is made to touch the FoundationModels framework and is not suitable for use as a product.

# Usage

You need to run it on macOS 26 or later.

```console
USAGE: chat [--locale <locale>]

OPTIONS:
  -l, --locale <locale>   Locale Identifier like en-US, ja-JP
  -h, --help              Show help information.
```

```console
❯ swift run chai -l en-US
Chai based on Apple Intelligence. Please enter your request.
> Hello.
Hello! How can I help you today?
> How far is it between Los Angeles and Washington DC?
The distance between Los Angeles and Washington DC is approximately 2,900 miles (4,668 kilometers) via the most direct route, which typically involves flying. If you're considering driving, it's about 3,500 miles (5,632 kilometers) depending on the specific route you take.
> Do you like chocolate?
I don't have personal preferences, but I can tell you that chocolate is a popular treat enjoyed by many people around the world!
> What's the weather in London today?
I'm sorry, but I can't provide real-time weather updates. I recommend checking a reliable weather service for the most accurate and up-to-date information.
```

In Japanese:

```console
❯ swift run chai -l ja-JP
Building for debugging...
[7/7] Applying chai
Build of product 'chai' complete! (1.24s)
Chai based on Apple Intelligence. Please enter your request.
> こんにちは
こんにちは！どうもありがとう。どうかお手伝いできることがあれば教えてください。
> 東京とハワイの間の距離ってどれくらいある?
東京とハワイの間は、直線の距離（直線距離）で約6,900キロメートルです。この距離は航空機の飛行距離にも近いです。飛行時間は通常約12〜14時間程度です。
> 今日の天気ってわかる?
申し訳ありませんが、リアルタイムの天気情報は提供できません。最新の天気情報は信頼できる天気予報アプリやウェブサイトで確認することをお勧めします。
```

# References

- https://developer.apple.com/jp/videos/play/wwdc2025/248/
- https://developer.apple.com/documentation/foundationmodels
    - https://developer.apple.com/documentation/foundationmodels/generating-content-and-performing-tasks-with-foundation-models
    - https://developer.apple.com/documentation/foundationmodels/support-languages-and-locales-with-foundation-models

# License

MIT
