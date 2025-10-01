[coco]
version = "0.7.0"

[module]
name = "MAS0"
version = "0.0.1"
license = []
repository = ""
authors = []

[target]
os = "MOI"
arch = "PISA"

[target.moi]
format = "YAML"
output = "mas0"

[target.pisa]
format = "ASM"
version = "0.5.0"

[lab.render]
big_int_as_hex = true
bytes_as_hex = false

[lab.config.default]
env = "main"

[lab.scripts]
test-toggle = ["engines", "users", "logics"]

[scripts]
test-script = "coco compile .; pwd; uname -a"
