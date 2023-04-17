# verbose-goggles

[![GitHub Super-Linter](https://github.com/pinkslugcircuits/verbose-goggles/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Background
This repository holds an implementation of an example blockchain network where indicators modern slavery is traced. This implementation of an example blockchain is a proof of concept/prototype demonstrator that has been developed as part of a masters thesis conducted at Curtin University.

The blockchain network consists of a physical building that is represented by a digital twin. Currently a digital twin contains no information on the final product fitted at time of build only the information on what should have been fitted at time of build.
By connecting the digital twin to a blockchain containing information on the history of the product the digital twin is extended into a digital triplet.

Hyperledger fabric was the blockchain tool chain selected by the researcher to develop this proof of concept/prototype in.

## Environment setup
This repository is based of Hyperledger fabric network tools. It requires the environment to be setup in a way specified in the Hyperledger fabric manual. The `envsetup.sh` tool will set up the environment on a Ubuntu 24.04 LTS system (VM or physical machine). Other Ubuntu versions may be supported but have not been tested.

The environment is setup by running the `./envsetup.sh setup` command. If you want to quickly check your environment with running the full setup you can run the `./envsetup.sh verify-all` command.

Once the environment is setup you can then run the prototype network.

## Running the prototype network


## System Architecture

The blockchain network has the following components.

### Ordering Services

**O1** - This prototype only uses one ordering node for simplicity and to reduce the resource load.

### Organizations and Peers

There are few organizations however each organization only has one peer. In reality there would be several peers and ever departments within each organization.

**R1** - Building organization  
**R2** - Building certifier (for the E-score)  
**R3** - Builder  
**R4** - SpectrumBond (manufacturer and supplier of sheet metal roofs of various colours and styles)  
**R5** - Concrete Queens Without Tiaras, CQWT (subcontractor that provides concreting solutions)  
**R6** - Coral (Concrete mixes)  
**R7** - Ninety degree beach cement (local importer of cement)  
**R8** - Youngendorff Carriers (Dry bulk goods shipping company)  
**R9** - net import deficit inc (exporter of cement)  
**R10** - OuterCement (manufacturer of cement)  
**R11** - Argentine Brick Pit (supplier of clay)  
**R12** - Lemon and bitter mine (supplier of lime)  
**R13** - Hourglass mine (supplier of sand)  
**R14** - Hummings (supplier of building goods)  
**R15** - Flora Slaughter (timber mill)  
**R16** - Pine Wispier Plantation (pine tree plantation)  
**R17** - Flora Supplier Certifier (plantation certifier)  
**R18** - Janet Softings (supplier and manufacturer of building materials. Is a division of JS holdings)  
**R19** - Janet Softings FC (manufacturer of FC sheets. Is a division of JS holdings)  
**R20** - Architect  

### Channel Configuration 

