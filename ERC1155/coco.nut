[coco]
version = "0.5.2"

[module]
name = "MT"
version = "0.0.1"
license = []
repository = "https://github.com/sarvalabs/cocolang-examples/ERC1155"
authors = ["Akash Paul <https://github.com/sarvalabs-akashpaul>"]

[target]
os = "MOI"
arch = "PISA"

[target.moi]
format = "YAML"
output = "nft"

[target.pisa]
format = "ASM"
version = "0.3.2"

[lab.render]
big_int_as_hex = true
bytes_as_hex = false

[lab.config.default]
url = "http://127.0.0.1:6060"
env = "main"

[lab.scripts]
test-toggle = ["engines", "users", "logics"]

[scripts]
compile = "coco compile ."
