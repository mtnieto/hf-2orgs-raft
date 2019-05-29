ORDERER_CA=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/myapp.com/orderers/orderer0.myapp.com/msp/tlscacerts/tlsca.myapp.com-cert.pem
CORE_PEER_LOCALMSPID="netflixMSP"
CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/netflix.myapp.com/peers/peer0.netflix.myapp.com/tls/ca.crt
CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/netflix.myapp.com/users/Admin@netflix.myapp.com/msp
CORE_PEER_ADDRESS=peer0.netflix.myapp.com:7051
CHANNEL_NAME=serieschannel
CORE_PEER_TLS_ENABLED=true
ORDERER_SYSCHAN_ID=syschain
peer channel create -o orderer0.myapp.com:7050 -c $CHANNEL_NAME -f ./channel-artifacts/serieschannel.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA >&log.txt
cat log.txt
