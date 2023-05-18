# verbose-goggles

The code in this repository is not for production use. It is made up from modified example code from the Hyperledger Fabric samples repository. if you need even more convincing that it is not production ready we have included the status of the code after having run through the super linter below.

[![GitHub Super-Linter](https://github.com/pinkslugcircuits/verbose-goggles/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)

## Background
This repository holds an implementation of an example blockchain network where indicators modern slavery is traced. This implementation of an example blockchain is a proof of concept/prototype demonstrator that has been developed as part of a masters thesis conducted at Curtin University.

The blockchain network consists of a physical building that is represented by a digital twin. Currently a digital twin contains no information on the final product fitted at time of build only the information on what should have been fitted at time of build.
By connecting the digital twin to a blockchain containing information on the history of the product the digital twin is extended.  

Hyperledger fabric was the blockchain tool chain selected by the researcher to develop this proof of concept/prototype in.

## Environment setup
This repository is based of Hyperledger fabric network tools. It requires the environment to be setup in a way specified in the Hyperledger fabric manual. The `envsetup.sh` tool will set up the environment on a Ubuntu 24.04 LTS system (VM or physical machine). Other Ubuntu versions may be supported but have not been tested.

The environment is setup by running the `./envsetup.sh setup` command. If you want to quickly check your environment to check if it can support the full setup you can run the `./envsetup.sh verify-all` command.

Once the environment is setup you can then run the prototype network.

## Running the prototype network

The code repository needs to run from within the hyperledger `fabric-sample` folder. The repository folder should be cloned to the first level of the `fabric-sample` folder.  

Open a terminal session withing the repository folder. In the terminal session type `./network.sh up createChannel` command and the peer servers for all the organization will be created and run. The genesis blocks and  channels allowing the peers to talk to each other will also be created and the peers enrolled in the channels.  

To bring the network back down and remove the created files run the `./network.sh down` command and all the containers will stop running and all the containers, images and volumes will be deleted along with the databases.

## System Architecture

This prototype blockchain solution is built using the Hyperledger Fabric tool chain. It simulates the supply chains for 4 product types. The supply chains are represented at different degrees of resolution.  

Some are simple representations such as a manufacture direct to the builder. In the case of the concrete supply chain a more complicated example with importers, exporters, mixers, shipping and builders are represented.  

The prototype network in this repository consists of one ordering node to handel all the blockchain updates. Each stage of the supply chain is represented by an organization. Each organization has only one peer. The peer hosts a copy of the blockchain ledger and runs the smart contract (chain code) for that peer.  

The peers are joined to channels that allow them to talk to each other. Peers can only talk to each other when  
1. Both peers are connected to the same channel.
2. Both peers are running the same compatible chain code.
3. Both peers are added to the chain code genesis block which defines the configuration of the channel and blockchain.  

External application can connect to the peers to trigger changes to the blockchain through invoking modules in the chain code running on the peers. Each peer can manage what application can connect to it.

Peers can be connected to more then one peer at the same time.  

The configuration of the network is described in more detail below.

### Ordering Services

**O1** - This prototype only uses one ordering node for simplicity and to reduce the resource load.

### Organizations and Peers

There are few organizations however each organization only has one peer. In reality there would be several peers and ever departments within each organization.

**R1** - Building organization  
**R2** - Building certifier (for the E-score)  
**R3** - Builder  
**R4** - Sheet metal roof supplier  
**R5** - Subcontractor that provides concreting solutions  
**R6** - Concrete mixes  
**R7** - Local importer of cement  
**R8** - Dry bulk goods shipping company  
**R9** - Exporter of cement  
**R10** - Manufacturer of cement  
**R11** - Supplier of clay  
**R12** - Supplier of lime  
**R13** - Supplier of sand  
**R14** - Supplier of building goods  
**R15** - Timber mill  
**R16** - Pine tree plantation  
**R17** - Plantation certifier  
**R18** - Supplier and manufacturer of building materials.  
**R19** - Manufacturer of FC sheets.  
**R20** - Architect

### Channel Configuration

There are 5 channels used in the prototype. more could be used but due to resource constraints it was limited to 5 channels.  

**CC1** - Contains R1 and R4 (This is the channel for the sheet metal transaction)  
**CC2** - Contains R1, R3, R5, R6, R7, R8, R9, R10, R11, R12 and R13 (This is the channel for the concrete)  
**CC3** - Contains R1, R3, R14, R15, R16 and R18 (This is the channel timber)  
**CC4** - Contains R1, R3, R17, R18 and R19 (This is the channel for the FC sheets)  
**CC5** - Contains R1, R2, R3 and R20 (This is the channel for the building, builder and architect)

### Port mapping

#### Certificate Authority ports  

**7054** - Org1 CA, local host  
**8054** - Org2 CA, local host  
**9054** - Ordering service CA, local host 
**11054** - Org3 CA, local host  
**12054** - Org4 CA, local host  
**13054** - Org5 CA, local host  
**14054** - Org6 CA, local host  
**15054** - Org7 CA, local host  
**16054** - Org8 CA, local host  
**17054** - Org9 CA, local host  
**18054** - Org10 CA, local host  
**19054** - Org11 CA, local host  
**20054** - Org12 CA, local host  
**21054** - Org13 CA, local host  
**22054** - Org14 CA, local host  
**23054** - Org15 CA, local host  
**24054** - Org16 CA, local host  
**25054** - Org17 CA, local host  
**26054** - Org18 CA, local host  
**27054** - Org19 CA, local host  
**28054** - Org20 CA, local host  
**29054** - Org1 CA, listen address  
**30054** - Org2 CA, listen address  
**31054** - Ordering service CA, listen address  
**32054** - Org3 CA, listen address  
**33054** - Org4 CA, listen address  
**34054** - Org5 CA, listen address  
**35054** - Org6 CA, listen address  
**36054** - Org7 CA, listen address  
**37054** - Org8 CA, listen address  
**38054** - Org9 CA, listen address  
**39054** - Org10 CA, listen address  
**40054** - Org11 CA, listen address  
**41054** - Org12 CA, listen address  
**42054** - Org13 CA, listen address  
**43054** - Org14 CA, listen address   
**44054** - Org15 CA, listen address  
**45054** - Org16 CA, listen address  
**46054** - Org17 CA, listen address  
**47054** - Org18 CA, listen address  
**48054** - Org19 CA, listen address   
**49054** - Org20 CA, listen address  

#### other

**7051** - Org1 LISTENADDRESS  
**7052** - Org1 CHAINCODEADDRESS and CHAINCODELISTENADDRESS  
**9444** - Org1 OPERATIONS_LISTENADDRESS  