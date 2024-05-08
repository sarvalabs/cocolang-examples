[coco]
version = "0.4.0"

[module]
name = "TokenLedger"
version = "2.0.0"
license = ["MIT"]
repository = "https://github.com/sarvalabs/cocolang-examples/tokenledger"
authors = ["Manish Meganathan <https://github.com/sarvalabs-manish>", "Bhimgouda Patil <https://github.com/Bhimgouda>", "Sarthak Shastri <https://github.com/sarvalabs-sarthak>"]

[target]
os = "MOI"
arch = "PISA"

[target.moi]
format = "YAML"
output = "tokenledger"

[target.pisa]
format = "BIN"

[dependencies.local]
