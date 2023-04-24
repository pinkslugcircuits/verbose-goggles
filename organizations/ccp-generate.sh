#!/bin/bash

function one_line_pem {
    echo "`awk 'NF {sub(/\\n/, ""); printf "%s\\\\\\\n",$0;}' $1`"
}

function json_ccp {
    local PP=$(one_line_pem $4)
    local CP=$(one_line_pem $5)
    sed -e "s/\${ORG}/$1/" \
        -e "s/\${P0PORT}/$2/" \
        -e "s/\${CAPORT}/$3/" \
        -e "s#\${PEERPEM}#$PP#" \
        -e "s#\${CAPEM}#$CP#" \
        organizations/ccp-template.json
}

function yaml_ccp {
    local PP=$(one_line_pem $4)
    local CP=$(one_line_pem $5)
    sed -e "s/\${ORG}/$1/" \
        -e "s/\${P0PORT}/$2/" \
        -e "s/\${CAPORT}/$3/" \
        -e "s#\${PEERPEM}#$PP#" \
        -e "s#\${CAPEM}#$CP#" \
        organizations/ccp-template.yaml | sed -e $'s/\\\\n/\\\n          /g'
}

ORG=1
P0PORT=7051
CAPORT=7054
PEERPEM=organizations/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org1.example.com/ca/ca.org1.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org1.example.com/connection-org1.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org1.example.com/connection-org1.yaml

ORG=2
P0PORT=9051
CAPORT=8054
PEERPEM=organizations/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org2.example.com/ca/ca.org2.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org2.example.com/connection-org2.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org2.example.com/connection-org2.yaml

ORG=3
P0PORT=11051
CAPORT=11054
PEERPEM=organizations/peerOrganizations/org3.example.com/tlsca/tlsca.org3.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org3.example.com/ca/ca.org3.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org3.example.com/connection-org3.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org3.example.com/connection-org3.yaml

ORG=4
P0PORT=13051
CAPORT=12054
PEERPEM=organizations/peerOrganizations/org4.example.com/tlsca/tlsca.org4.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org4.example.com/ca/ca.org4.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org4.example.com/connection-org4.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org4.example.com/connection-org4.yaml

ORG=5
P0PORT=15051
CAPORT=13054
PEERPEM=organizations/peerOrganizations/org5.example.com/tlsca/tlsca.org5.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org5.example.com/ca/ca.org5.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org5.example.com/connection-org5.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org5.example.com/connection-org5.yaml

ORG=6
P0PORT=17051
CAPORT=14054
PEERPEM=organizations/peerOrganizations/org6.example.com/tlsca/tlsca.org6.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org6.example.com/ca/ca.org6.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org6.example.com/connection-org6.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org6.example.com/connection-org6.yaml

ORG=7
P0PORT=19051
CAPORT=15054
PEERPEM=organizations/peerOrganizations/org7.example.com/tlsca/tlsca.org7.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org7.example.com/ca/ca.org7.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org7.example.com/connection-org7.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org7.example.com/connection-org7.yaml

ORG=8
P0PORT=21051
CAPORT=16054
PEERPEM=organizations/peerOrganizations/org8.example.com/tlsca/tlsca.org8.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org8.example.com/ca/ca.org8.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org8.example.com/connection-org8.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org8.example.com/connection-org8.yaml

ORG=9
P0PORT=23051
CAPORT=17054
PEERPEM=organizations/peerOrganizations/org9.example.com/tlsca/tlsca.org9.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org9.example.com/ca/ca.org9.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org9.example.com/connection-org9.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org9.example.com/connection-org9.yaml

ORG=10
P0PORT=25051
CAPORT=18054
PEERPEM=organizations/peerOrganizations/org10.example.com/tlsca/tlsca.org10.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org10.example.com/ca/ca.org10.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org10.example.com/connection-org10.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org10.example.com/connection-org10.yaml

ORG=11
P0PORT=27051
CAPORT=19054
PEERPEM=organizations/peerOrganizations/org11.example.com/tlsca/tlsca.org11.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org11.example.com/ca/ca.org11.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org11.example.com/connection-org11.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org11.example.com/connection-org11.yaml

ORG=12
P0PORT=29051
CAPORT=20054
PEERPEM=organizations/peerOrganizations/org12.example.com/tlsca/tlsca.org12.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org12.example.com/ca/ca.org12.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org12.example.com/connection-org12.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org12.example.com/connection-org12.yaml

ORG=13
P0PORT=31051
CAPORT=21054
PEERPEM=organizations/peerOrganizations/org13.example.com/tlsca/tlsca.org13.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org13.example.com/ca/ca.org13.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org13.example.com/connection-org13.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org13.example.com/connection-org13.yaml

ORG=14
P0PORT=33051
CAPORT=22054
PEERPEM=organizations/peerOrganizations/org14.example.com/tlsca/tlsca.org14.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org14.example.com/ca/ca.org14.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org14.example.com/connection-org14.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org14.example.com/connection-org14.yaml

ORG=15
P0PORT=35051
CAPORT=23054
PEERPEM=organizations/peerOrganizations/org15.example.com/tlsca/tlsca.org15.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org15.example.com/ca/ca.org15.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org15.example.com/connection-org15.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org15.example.com/connection-org15.yaml

ORG=16
P0PORT=37051
CAPORT=24054
PEERPEM=organizations/peerOrganizations/org16.example.com/tlsca/tlsca.org16.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org16.example.com/ca/ca.org16.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org16.example.com/connection-org16.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org16.example.com/connection-org16.yaml

ORG=17
P0PORT=39051
CAPORT=25054
PEERPEM=organizations/peerOrganizations/org17.example.com/tlsca/tlsca.org17.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org17.example.com/ca/ca.org17.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org17.example.com/connection-org17.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org17.example.com/connection-org17.yaml

ORG=18
P0PORT=41051
CAPORT=26054
PEERPEM=organizations/peerOrganizations/org18.example.com/tlsca/tlsca.org18.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org18.example.com/ca/ca.org18.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org18.example.com/connection-org18.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org18.example.com/connection-org18.yaml

ORG=19
P0PORT=43051
CAPORT=27054
PEERPEM=organizations/peerOrganizations/org19.example.com/tlsca/tlsca.org19.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org19.example.com/ca/ca.org19.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org19.example.com/connection-org19.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org19.example.com/connection-org19.yaml

ORG=20
P0PORT=45051
CAPORT=28054
PEERPEM=organizations/peerOrganizations/org20.example.com/tlsca/tlsca.org20.example.com-cert.pem
CAPEM=organizations/peerOrganizations/org20.example.com/ca/ca.org20.example.com-cert.pem

echo "$(json_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org20.example.com/connection-org20.json
echo "$(yaml_ccp $ORG $P0PORT $CAPORT $PEERPEM $CAPEM)" > organizations/peerOrganizations/org20.example.com/connection-org20.yaml