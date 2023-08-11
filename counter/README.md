# Counter
The `Counter` module is a simple logic with an internal 
value state that can be retrieved or incremented.

### Compiling the Module
The `counter.coco` module can be compiled to the target the PISA Runtime on MOI
by running the following command. Other compile targets are not currently supported.
```shell
coco compile .
```

The `counter.yaml` file is a manifest file that is the compiled artifact for 
the MOI Protocol to execute the Logic for the PISA Runtime. The instruction 
format for the PISA Manifest is `ASM` and can be converted into `HEX` or `BIN` 
with LogicLab using the following command within the REPL
```
>>> manifest("./counter.yaml") into HEX
```

When compiling from Cocolang to a [MOI Manifest](https://sarvalabs.notion.site/Logic-Manifest-Standard-93f5fee1af8d4c3cad155b9827b97930?pvs=4), 
you can compile to other file formats apart from `YAML`, such as `JSON` or `POLO` with the following command
```shell
coco compile -f POLO
```

**POLO** is the expected format for deploying to the MOI Protocol with the _IxLogicDeploy_ interaction.