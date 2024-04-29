[coco]
version = "0.2.0"

[module]
name = "TokenLedger"
version = "0.0.1"
license = []
repository = ""
authors = []

[target]
os = "MOI"
arch = "PISA"

[target.moi]
format = "YAML"
output = "tokenledger.yaml"

[target.pisa]
format = "BIN"

[dependencies.local]
