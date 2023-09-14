# Flipper 
The `Flipper` module is a simple logic with an internal 
boolean state that can be flipped, retrieved and modified.

The [coco.nut](./coco.nut) file in this directory contains information about 
the module's compile preferences along with other application metadata

### Compiling the Module
The `flipper.coco` module can be compiled to the target the PISA Runtime on MOI
by running the following command. Other compile targets are not currently supported.
```shell
coco compile
```

The `flipper.yaml` file is a manifest file that is the compiled artifact for 
the MOI Protocol to execute the Logic for the PISA Runtime. The instruction 
format for the PISA Manifest is `ASM` and can be converted into `HEX` or `BIN` 
with LogicLab using the following command within the REPL
```
>>> manifest("./flipper.yaml") into HEX
```

When compiling from Cocolang to a [MOI Manifest](https://sarvalabs.notion.site/Logic-Manifest-Standard-93f5fee1af8d4c3cad155b9827b97930?pvs=4), 
you can compile to other file formats apart from `YAML`, such as `JSON` or `POLO` with the following command
```shell
coco compile -f POLO
```

**POLO** is the expected format for deploying to the MOI Protocol with the _IxLogicDeploy_ interaction.

### Example Application
An example MOI Application that uses the [MOI JavaScript SDK](https://www.npmjs.com/package/js-moi-sdk) 
is available at [MOI JavaScript Flipper Example](https://github.com/sarvalabs/js-moi-examples/flipper)