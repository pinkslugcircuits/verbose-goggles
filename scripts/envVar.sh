#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#

# This is a collection of bash functions used by different scripts

# imports
. scripts/utils.sh

export CORE_PEER_TLS_ENABLED=true
export ORDERER_CA=${PWD}/organizations/ordererOrganizations/example.com/tlsca/tlsca.example.com-cert.pem
export PEER0_ORG1_CA=${PWD}/organizations/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem
export PEER0_ORG2_CA=${PWD}/organizations/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem
export PEER0_ORG3_CA=${PWD}/organizations/peerOrganizations/org3.example.com/tlsca/tlsca.org3.example.com-cert.pem
export PEER0_ORG4_CA=${PWD}/organizations/peerOrganizations/org4.example.com/tlsca/tlsca.org4.example.com-cert.pem
export PEER0_ORG5_CA=${PWD}/organizations/peerOrganizations/org5.example.com/tlsca/tlsca.org5.example.com-cert.pem
export PEER0_ORG6_CA=${PWD}/organizations/peerOrganizations/org6.example.com/tlsca/tlsca.org6.example.com-cert.pem
export PEER0_ORG7_CA=${PWD}/organizations/peerOrganizations/org7.example.com/tlsca/tlsca.org7.example.com-cert.pem
export PEER0_ORG8_CA=${PWD}/organizations/peerOrganizations/org8.example.com/tlsca/tlsca.org8.example.com-cert.pem
export PEER0_ORG9_CA=${PWD}/organizations/peerOrganizations/org9.example.com/tlsca/tlsca.org9.example.com-cert.pem
export PEER0_ORG10_CA=${PWD}/organizations/peerOrganizations/org10.example.com/tlsca/tlsca.org10.example.com-cert.pem
export PEER0_ORG11_CA=${PWD}/organizations/peerOrganizations/org11.example.com/tlsca/tlsca.org11.example.com-cert.pem
export PEER0_ORG12_CA=${PWD}/organizations/peerOrganizations/org12.example.com/tlsca/tlsca.org12.example.com-cert.pem
export PEER0_ORG13_CA=${PWD}/organizations/peerOrganizations/org13.example.com/tlsca/tlsca.org13.example.com-cert.pem
export PEER0_ORG14_CA=${PWD}/organizations/peerOrganizations/org14.example.com/tlsca/tlsca.org14.example.com-cert.pem
export PEER0_ORG15_CA=${PWD}/organizations/peerOrganizations/org15.example.com/tlsca/tlsca.org15.example.com-cert.pem
export PEER0_ORG16_CA=${PWD}/organizations/peerOrganizations/org16.example.com/tlsca/tlsca.org16.example.com-cert.pem
export PEER0_ORG17_CA=${PWD}/organizations/peerOrganizations/org17.example.com/tlsca/tlsca.org17.example.com-cert.pem
export PEER0_ORG18_CA=${PWD}/organizations/peerOrganizations/org18.example.com/tlsca/tlsca.org18.example.com-cert.pem
export PEER0_ORG19_CA=${PWD}/organizations/peerOrganizations/org19.example.com/tlsca/tlsca.org19.example.com-cert.pem
export PEER0_ORG20_CA=${PWD}/organizations/peerOrganizations/org20.example.com/tlsca/tlsca.org20.example.com-cert.pem
export ORDERER_ADMIN_TLS_SIGN_CERT=${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.crt
export ORDERER_ADMIN_TLS_PRIVATE_KEY=${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/tls/server.key

# Set environment variables for the peer org
setGlobals() {
  local USING_ORG=""
  if [ -z "$OVERRIDE_ORG" ]; then
    USING_ORG=$1
  else
    USING_ORG="${OVERRIDE_ORG}"
  fi
  infoln "Using organization ${USING_ORG}"
  if [ $USING_ORG -eq 1 ]; then
    export CORE_PEER_LOCALMSPID="Org1MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG1_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
    export CORE_PEER_ADDRESS=localhost:7051
  elif [ $USING_ORG -eq 2 ]; then
    export CORE_PEER_LOCALMSPID="Org2MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG2_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
    export CORE_PEER_ADDRESS=localhost:9051

  elif [ $USING_ORG -eq 3 ]; then
    export CORE_PEER_LOCALMSPID="Org3MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG3_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org3.example.com/users/Admin@org3.example.com/msp
    export CORE_PEER_ADDRESS=localhost:11051
    
  elif [ $USING_ORG -eq 4 ]; then
    export CORE_PEER_LOCALMSPID="Org4MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG4_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org4.example.com/users/Admin@org4.example.com/msp
    export CORE_PEER_ADDRESS=localhost:13051

  elif [ $USING_ORG -eq 5 ]; then
    export CORE_PEER_LOCALMSPID="Org5MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG5_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org5.example.com/users/Admin@org5.example.com/msp
    export CORE_PEER_ADDRESS=localhost:15051

  elif [ $USING_ORG -eq 6 ]; then
    export CORE_PEER_LOCALMSPID="Org6MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG6_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org6.example.com/users/Admin@org6.example.com/msp
    export CORE_PEER_ADDRESS=localhost:17051

  elif [ $USING_ORG -eq 7 ]; then
    export CORE_PEER_LOCALMSPID="Org7MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG7_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org7.example.com/users/Admin@org7.example.com/msp
    export CORE_PEER_ADDRESS=localhost:19051

  elif [ $USING_ORG -eq 8 ]; then
    export CORE_PEER_LOCALMSPID="Org8MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG8_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org8.example.com/users/Admin@org8.example.com/msp
    export CORE_PEER_ADDRESS=localhost:21051

  elif [ $USING_ORG -eq 9 ]; then
    export CORE_PEER_LOCALMSPID="Org9MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG9_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org9.example.com/users/Admin@org9.example.com/msp
    export CORE_PEER_ADDRESS=localhost:23051

  elif [ $USING_ORG -eq 10 ]; then
    export CORE_PEER_LOCALMSPID="Org10MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG10_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org10.example.com/users/Admin@org10.example.com/msp
    export CORE_PEER_ADDRESS=localhost:25051

  elif [ $USING_ORG -eq 11 ]; then
    export CORE_PEER_LOCALMSPID="Org11MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG11_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org11.example.com/users/Admin@org11.example.com/msp
    export CORE_PEER_ADDRESS=localhost:27051

  elif [ $USING_ORG -eq 12 ]; then
    export CORE_PEER_LOCALMSPID="Org12MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG12_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org12.example.com/users/Admin@org12.example.com/msp
    export CORE_PEER_ADDRESS=localhost:29051

  elif [ $USING_ORG -eq 13 ]; then
    export CORE_PEER_LOCALMSPID="Org13MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG13_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org13.example.com/users/Admin@org13.example.com/msp
    export CORE_PEER_ADDRESS=localhost:31051

  elif [ $USING_ORG -eq 14 ]; then
    export CORE_PEER_LOCALMSPID="Org14MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG14_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org14.example.com/users/Admin@org14.example.com/msp
    export CORE_PEER_ADDRESS=localhost:33051

  elif [ $USING_ORG -eq 15 ]; then
    export CORE_PEER_LOCALMSPID="Org15MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG15_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org15.example.com/users/Admin@org15.example.com/msp
    export CORE_PEER_ADDRESS=localhost:35051

  elif [ $USING_ORG -eq 16 ]; then
    export CORE_PEER_LOCALMSPID="Org16MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG16_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org16.example.com/users/Admin@org16.example.com/msp
    export CORE_PEER_ADDRESS=localhost:37051

  elif [ $USING_ORG -eq 17 ]; then
    export CORE_PEER_LOCALMSPID="Org17MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG17_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org17.example.com/users/Admin@org17.example.com/msp
    export CORE_PEER_ADDRESS=localhost:39051

  elif [ $USING_ORG -eq 18 ]; then
    export CORE_PEER_LOCALMSPID="Org18MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG18_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org18.example.com/users/Admin@org18.example.com/msp
    export CORE_PEER_ADDRESS=localhost:41051

  elif [ $USING_ORG -eq 19 ]; then
    export CORE_PEER_LOCALMSPID="Org19MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG19_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org19.example.com/users/Admin@org19.example.com/msp
    export CORE_PEER_ADDRESS=localhost:43051

  elif [ $USING_ORG -eq 20 ]; then
    export CORE_PEER_LOCALMSPID="Org20MSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ORG20_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org20.example.com/users/Admin@org20.example.com/msp
    export CORE_PEER_ADDRESS=localhost:45051
  else
    errorln "ORG Unknown"
  fi

  if [ "$VERBOSE" == "true" ]; then
    env | grep CORE
  fi
}

# Set environment variables for use in the CLI container
setGlobalsCLI() {
  setGlobals $1

  local USING_ORG=""
  if [ -z "$OVERRIDE_ORG" ]; then
    USING_ORG=$1
  else
    USING_ORG="${OVERRIDE_ORG}"
  fi
  if [ $USING_ORG -eq 1 ]; then
    export CORE_PEER_ADDRESS=peer0.org1.example.com:7051
  elif [ $USING_ORG -eq 2 ]; then
    export CORE_PEER_ADDRESS=peer0.org2.example.com:9051
  elif [ $USING_ORG -eq 3 ]; then
    export CORE_PEER_ADDRESS=peer0.org3.example.com:11051
  elif [ $USING_ORG -eq 4 ]; then
    export CORE_PEER_ADDRESS=peer0.org4.example.com:13051
  elif [ $USING_ORG -eq 5 ]; then
    export CORE_PEER_ADDRESS=peer0.org5.example.com:15051
  elif [ $USING_ORG -eq 6 ]; then
    export CORE_PEER_ADDRESS=peer0.org6.example.com:17051
  elif [ $USING_ORG -eq 7 ]; then
    export CORE_PEER_ADDRESS=peer0.org7.example.com:19051
  elif [ $USING_ORG -eq 8 ]; then
    export CORE_PEER_ADDRESS=peer0.org8.example.com:21051
  elif [ $USING_ORG -eq 9 ]; then
    export CORE_PEER_ADDRESS=peer0.org9.example.com:23051
  elif [ $USING_ORG -eq 10 ]; then
    export CORE_PEER_ADDRESS=peer0.org10.example.com:25051
  elif [ $USING_ORG -eq 11 ]; then
    export CORE_PEER_ADDRESS=peer0.org11.example.com:27051
  elif [ $USING_ORG -eq 12 ]; then
    export CORE_PEER_ADDRESS=peer0.org12.example.com:29051
  elif [ $USING_ORG -eq 13 ]; then
    export CORE_PEER_ADDRESS=peer0.org13.example.com:31051
  elif [ $USING_ORG -eq 14 ]; then
    export CORE_PEER_ADDRESS=peer0.org14.example.com:33051
  elif [ $USING_ORG -eq 15 ]; then
    export CORE_PEER_ADDRESS=peer0.org15.example.com:35051
  elif [ $USING_ORG -eq 16 ]; then
    export CORE_PEER_ADDRESS=peer0.org16.example.com:37051
  elif [ $USING_ORG -eq 17 ]; then
    export CORE_PEER_ADDRESS=peer0.org17.example.com:39051
  elif [ $USING_ORG -eq 18 ]; then
    export CORE_PEER_ADDRESS=peer0.org18.example.com:41051
  elif [ $USING_ORG -eq 19 ]; then
    export CORE_PEER_ADDRESS=peer0.org19.example.com:43051
  elif [ $USING_ORG -eq 20 ]; then
    export CORE_PEER_ADDRESS=peer0.org20.example.com:45051
  else
    errorln "ORG Unknown"
  fi
}

# parsePeerConnectionParameters $@
# Helper function that sets the peer connection parameters for a chaincode
# operation
parsePeerConnectionParameters() {
  PEER_CONN_PARMS=()
  PEERS=""
  while [ "$#" -gt 0 ]; do
    setGlobals $1
    PEER="peer0.org$1"
    ## Set peer addresses
    if [ -z "$PEERS" ]
    then
	PEERS="$PEER"
    else
	PEERS="$PEERS $PEER"
    fi
    PEER_CONN_PARMS=("${PEER_CONN_PARMS[@]}" --peerAddresses $CORE_PEER_ADDRESS)
    ## Set path to TLS certificate
    CA=PEER0_ORG$1_CA
    TLSINFO=(--tlsRootCertFiles "${!CA}")
    PEER_CONN_PARMS=("${PEER_CONN_PARMS[@]}" "${TLSINFO[@]}")
    # shift by one to get to the next organization
    shift
  done
}

verifyResult() {
  if [ $1 -ne 0 ]; then
    fatalln "$2"
  fi
}
