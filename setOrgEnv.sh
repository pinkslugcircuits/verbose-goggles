#!/bin/bash
#
# SPDX-License-Identifier: Apache-2.0




# default to using Org1
ORG=${1:-Org1}

# Exit on first error, print all commands.
set -e
set -o pipefail

# Where am I?
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

ORDERER_CA=${DIR}/test-network/organizations/ordererOrganizations/example.com/tlsca/tlsca.example.com-cert.pem
PEER0_ORG1_CA=${DIR}/test-network/organizations/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem
PEER0_ORG2_CA=${DIR}/test-network/organizations/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem
PEER0_ORG3_CA=${DIR}/test-network/organizations/peerOrganizations/org3.example.com/tlsca/tlsca.org3.example.com-cert.pem
PEER0_ORG4_CA=${DIR}/test-network/organizations/peerOrganizations/org4.example.com/tlsca/tlsca.org4.example.com-cert.pem
PEER0_ORG5_CA=${DIR}/test-network/organizations/peerOrganizations/org5.example.com/tlsca/tlsca.org5.example.com-cert.pem
PEER0_ORG6_CA=${DIR}/test-network/organizations/peerOrganizations/org6.example.com/tlsca/tlsca.org6.example.com-cert.pem
PEER0_ORG7_CA=${DIR}/test-network/organizations/peerOrganizations/org7.example.com/tlsca/tlsca.org7.example.com-cert.pem
PEER0_ORG8_CA=${DIR}/test-network/organizations/peerOrganizations/org8.example.com/tlsca/tlsca.org8.example.com-cert.pem
PEER0_ORG9_CA=${DIR}/test-network/organizations/peerOrganizations/org9.example.com/tlsca/tlsca.org9.example.com-cert.pem
PEER0_ORG10_CA=${DIR}/test-network/organizations/peerOrganizations/org10.example.com/tlsca/tlsca.org10.example.com-cert.pem
PEER0_ORG11_CA=${DIR}/test-network/organizations/peerOrganizations/org11.example.com/tlsca/tlsca.org11.example.com-cert.pem
PEER0_ORG12_CA=${DIR}/test-network/organizations/peerOrganizations/org12.example.com/tlsca/tlsca.org12.example.com-cert.pem
PEER0_ORG13_CA=${DIR}/test-network/organizations/peerOrganizations/org13.example.com/tlsca/tlsca.org13.example.com-cert.pem
PEER0_ORG14_CA=${DIR}/test-network/organizations/peerOrganizations/org14.example.com/tlsca/tlsca.org14.example.com-cert.pem
PEER0_ORG15_CA=${DIR}/test-network/organizations/peerOrganizations/org15.example.com/tlsca/tlsca.org15.example.com-cert.pem
PEER0_ORG16_CA=${DIR}/test-network/organizations/peerOrganizations/org16.example.com/tlsca/tlsca.org16.example.com-cert.pem
PEER0_ORG17_CA=${DIR}/test-network/organizations/peerOrganizations/org17.example.com/tlsca/tlsca.org17.example.com-cert.pem
PEER0_ORG18_CA=${DIR}/test-network/organizations/peerOrganizations/org18.example.com/tlsca/tlsca.org18.example.com-cert.pem
PEER0_ORG19_CA=${DIR}/test-network/organizations/peerOrganizations/org19.example.com/tlsca/tlsca.org19.example.com-cert.pem
PEER0_ORG20_CA=${DIR}/test-network/organizations/peerOrganizations/org20.example.com/tlsca/tlsca.org20.example.com-cert.pem


if [[ ${ORG,,} == "org1" || ${ORG,,} == "Building" ]]; then

   CORE_PEER_LOCALMSPID=Org1MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
   CORE_PEER_ADDRESS=localhost:7051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem

elif [[ ${ORG,,} == "org2" || ${ORG,,} == "Building certifier" ]]; then

   CORE_PEER_LOCALMSPID=Org2MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
   CORE_PEER_ADDRESS=localhost:9051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem

elif [[ ${ORG,,} == "org3" || ${ORG,,} == "Builder" ]]; then

   CORE_PEER_LOCALMSPID=Org3MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
   CORE_PEER_ADDRESS=localhost:11051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org3.example.com/tlsca/tlsca.org3.example.com-cert.pem

elif [[ ${ORG,,} == "org4" || ${ORG,,} == "PigmentBond" ]]; then

   CORE_PEER_LOCALMSPID=Org4MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
   CORE_PEER_ADDRESS=localhost:13051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org4.example.com/tlsca/tlsca.org4.example.com-cert.pem

elif [[ ${ORG,,} == "org5" || ${ORG,,} == "Concrete Queens Without Tiaras" ]]; then

   CORE_PEER_LOCALMSPID=Org5MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
   CORE_PEER_ADDRESS=localhost:15051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org5.example.com/tlsca/tlsca.org5.example.com-cert.pem

elif [[ ${ORG,,} == "org6" || ${ORG,,} == "Coral" ]]; then

   CORE_PEER_LOCALMSPID=Org6MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp
   CORE_PEER_ADDRESS=localhost:17051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org6.example.com/tlsca/tlsca.org6.example.com-cert.pem

elif [[ ${ORG,,} == "org7" || ${ORG,,} == "Ninety degree beach cement" ]]; then

   CORE_PEER_LOCALMSPID=Org7MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp
   CORE_PEER_ADDRESS=localhost:19051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org7.example.com/tlsca/tlsca.org7.example.com-cert.pem

elif [[ ${ORG,,} == "org8" || ${ORG,,} == "Youngendorff Carriers" ]]; then

   CORE_PEER_LOCALMSPID=Org8MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp
   CORE_PEER_ADDRESS=localhost:21051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org8.example.com/tlsca/tlsca.org8.example.com-cert.pem

elif [[ ${ORG,,} == "org9" || ${ORG,,} == "net import deficit inc" ]]; then

   CORE_PEER_LOCALMSPID=Org9MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp
   CORE_PEER_ADDRESS=localhost:23051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org9.example.com/tlsca/tlsca.org9.example.com-cert.pem

elif [[ ${ORG,,} == "org10" || ${ORG,,} == "OuterCement" ]]; then

   CORE_PEER_LOCALMSPID=Org10MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp
   CORE_PEER_ADDRESS=localhost:25051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org10.example.com/tlsca/tlsca.org10.example.com-cert.pem

elif [[ ${ORG,,} == "org11" || ${ORG,,} == "Argentine Brick Pit" ]]; then

   CORE_PEER_LOCALMSPID=Org11MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org11.example.com/users/Admin@org11.example.com/msp
   CORE_PEER_ADDRESS=localhost:27051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org11.example.com/tlsca/tlsca.org11.example.com-cert.pem

elif [[ ${ORG,,} == "org12" || ${ORG,,} == "Lemon and bitter mine" ]]; then

   CORE_PEER_LOCALMSPID=Org12MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org12.example.com/users/Admin@org12.example.com/msp
   CORE_PEER_ADDRESS=localhost:29051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org12.example.com/tlsca/tlsca.org12.example.com-cert.pem

elif [[ ${ORG,,} == "org13" || ${ORG,,} == "Hourglass mine" ]]; then

   CORE_PEER_LOCALMSPID=Org13MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org13.example.com/users/Admin@org13.example.com/msp
   CORE_PEER_ADDRESS=localhost:31051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org13.example.com/tlsca/tlsca.org13.example.com-cert.pem

elif [[ ${ORG,,} == "org14" || ${ORG,,} == "Hummings" ]]; then

   CORE_PEER_LOCALMSPID=Org14MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org14.example.com/users/Admin@org14.example.com/msp
   CORE_PEER_ADDRESS=localhost:33051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org14.example.com/tlsca/tlsca.org14.example.com-cert.pem

elif [[ ${ORG,,} == "org15" || ${ORG,,} == "Flora Slaughter" ]]; then

   CORE_PEER_LOCALMSPID=Org15MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org15.example.com/users/Admin@org15.example.com/msp
   CORE_PEER_ADDRESS=localhost:35051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org15.example.com/tlsca/tlsca.org15.example.com-cert.pem

elif [[ ${ORG,,} == "org16" || ${ORG,,} == "Pine Wispier Plantation" ]]; then

   CORE_PEER_LOCALMSPID=Org16MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org16.example.com/users/Admin@org16.example.com/msp
   CORE_PEER_ADDRESS=localhost:37051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org16.example.com/tlsca/tlsca.org16.example.com-cert.pem

elif [[ ${ORG,,} == "org17" || ${ORG,,} == "Flora Supplier Certifier" ]]; then

   CORE_PEER_LOCALMSPID=Org17MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org17.example.com/users/Admin@org17.example.com/msp
   CORE_PEER_ADDRESS=localhost:39051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org17.example.com/tlsca/tlsca.org17.example.com-cert.pem

elif [[ ${ORG,,} == "org18" || ${ORG,,} == "Janet Softings" ]]; then

   CORE_PEER_LOCALMSPID=Org18MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org18.example.com/users/Admin@org18.example.com/msp
   CORE_PEER_ADDRESS=localhost:41051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org18.example.com/tlsca/tlsca.org18.example.com-cert.pem

elif [[ ${ORG,,} == "org19" || ${ORG,,} == "Janet Softings FC" ]]; then

   CORE_PEER_LOCALMSPID=Org19MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org19.example.com/users/Admin@org19.example.com/msp
   CORE_PEER_ADDRESS=localhost:43051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org19.example.com/tlsca/tlsca.org19.example.com-cert.pem

elif [[ ${ORG,,} == "org20" || ${ORG,,} == "Architect" ]]; then

   CORE_PEER_LOCALMSPID=Org20MSP
   CORE_PEER_MSPCONFIGPATH=${DIR}/test-network/organizations/peerOrganizations/org20.example.com/users/Admin@org20.example.com/msp
   CORE_PEER_ADDRESS=localhost:45051
   CORE_PEER_TLS_ROOTCERT_FILE=${DIR}/test-network/organizations/peerOrganizations/org20.example.com/tlsca/tlsca.org20.example.com-cert.pem

else
   echo "Unknown \"$ORG\", please choose Org1/Digibank or Org2/Magnetocorp"
   echo "For example to get the environment variables to set upa Org2 shell environment run:  ./setOrgEnv.sh Org2"
   echo
   echo "This can be automated to set them as well with:"
   echo
   echo 'export $(./setOrgEnv.sh Org2 | xargs)'
   exit 1
fi

# output the variables that need to be set
echo "CORE_PEER_TLS_ENABLED=true"
echo "ORDERER_CA=${ORDERER_CA}"
echo "PEER0_ORG1_CA=${PEER0_ORG1_CA}"
echo "PEER0_ORG2_CA=${PEER0_ORG2_CA}"
echo "PEER0_ORG3_CA=${PEER0_ORG3_CA}"
echo "PEER0_ORG4_CA=${PEER0_ORG4_CA}"

echo "CORE_PEER_MSPCONFIGPATH=${CORE_PEER_MSPCONFIGPATH}"
echo "CORE_PEER_ADDRESS=${CORE_PEER_ADDRESS}"
echo "CORE_PEER_TLS_ROOTCERT_FILE=${CORE_PEER_TLS_ROOTCERT_FILE}"

echo "CORE_PEER_LOCALMSPID=${CORE_PEER_LOCALMSPID}"
