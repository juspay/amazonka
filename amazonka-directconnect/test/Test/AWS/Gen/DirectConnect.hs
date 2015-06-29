-- Module      : Test.AWS.Gen.DirectConnect
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Derived from AWS service descriptions, licensed under Apache 2.0.

module Test.AWS.Gen.DirectConnect where

import Data.Proxy
import Test.AWS.Fixture
import Test.Tasty
import Network.AWS.DirectConnect

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures = testGroup "SQS"
--     [ testGroup "request"
--         [ describeInterconnectsTest $
--             describeInterconnects
--
--         , deleteConnectionTest $
--             deleteConnection
--
--         , createConnectionTest $
--             createConnection
--
--         , describeConnectionsTest $
--             describeConnections
--
--         , deleteInterconnectTest $
--             deleteInterconnect
--
--         , confirmPrivateVirtualInterfaceTest $
--             confirmPrivateVirtualInterface
--
--         , describeConnectionsOnInterconnectTest $
--             describeConnectionsOnInterconnect
--
--         , describeLocationsTest $
--             describeLocations
--
--         , createPublicVirtualInterfaceTest $
--             createPublicVirtualInterface
--
--         , allocatePrivateVirtualInterfaceTest $
--             allocatePrivateVirtualInterface
--
--         , confirmConnectionTest $
--             confirmConnection
--
--         , describeVirtualGatewaysTest $
--             describeVirtualGateways
--
--         , confirmPublicVirtualInterfaceTest $
--             confirmPublicVirtualInterface
--
--         , describeVirtualInterfacesTest $
--             describeVirtualInterfaces
--
--         , createPrivateVirtualInterfaceTest $
--             createPrivateVirtualInterface
--
--         , deleteVirtualInterfaceTest $
--             deleteVirtualInterface
--
--         , allocatePublicVirtualInterfaceTest $
--             allocatePublicVirtualInterface
--
--         , allocateConnectionOnInterconnectTest $
--             allocateConnectionOnInterconnect
--
--         , createInterconnectTest $
--             createInterconnect
--
--           ]

--     , testGroup "response"
--         [ describeInterconnectsResponseTest $
--             describeInterconnectsResponse
--
--         , connectionTest $
--             connection
--
--         , connectionTest $
--             connection
--
--         , connectionsTest $
--             connections
--
--         , deleteInterconnectResponseTest $
--             deleteInterconnectResponse
--
--         , confirmPrivateVirtualInterfaceResponseTest $
--             confirmPrivateVirtualInterfaceResponse
--
--         , connectionsTest $
--             connections
--
--         , describeLocationsResponseTest $
--             describeLocationsResponse
--
--         , virtualInterfaceTest $
--             virtualInterface
--
--         , virtualInterfaceTest $
--             virtualInterface
--
--         , confirmConnectionResponseTest $
--             confirmConnectionResponse
--
--         , describeVirtualGatewaysResponseTest $
--             describeVirtualGatewaysResponse
--
--         , confirmPublicVirtualInterfaceResponseTest $
--             confirmPublicVirtualInterfaceResponse
--
--         , describeVirtualInterfacesResponseTest $
--             describeVirtualInterfacesResponse
--
--         , virtualInterfaceTest $
--             virtualInterface
--
--         , deleteVirtualInterfaceResponseTest $
--             deleteVirtualInterfaceResponse
--
--         , virtualInterfaceTest $
--             virtualInterface
--
--         , connectionTest $
--             connection
--
--         , interconnectTest $
--             interconnect
--
--           ]
--     ]

-- Requests

describeInterconnectsTest :: DescribeInterconnects -> TestTree
describeInterconnectsTest = undefined

deleteConnectionTest :: DeleteConnection -> TestTree
deleteConnectionTest = undefined

createConnectionTest :: CreateConnection -> TestTree
createConnectionTest = undefined

describeConnectionsTest :: DescribeConnections -> TestTree
describeConnectionsTest = undefined

deleteInterconnectTest :: DeleteInterconnect -> TestTree
deleteInterconnectTest = undefined

confirmPrivateVirtualInterfaceTest :: ConfirmPrivateVirtualInterface -> TestTree
confirmPrivateVirtualInterfaceTest = undefined

describeConnectionsOnInterconnectTest :: DescribeConnectionsOnInterconnect -> TestTree
describeConnectionsOnInterconnectTest = undefined

describeLocationsTest :: DescribeLocations -> TestTree
describeLocationsTest = undefined

createPublicVirtualInterfaceTest :: CreatePublicVirtualInterface -> TestTree
createPublicVirtualInterfaceTest = undefined

allocatePrivateVirtualInterfaceTest :: AllocatePrivateVirtualInterface -> TestTree
allocatePrivateVirtualInterfaceTest = undefined

confirmConnectionTest :: ConfirmConnection -> TestTree
confirmConnectionTest = undefined

describeVirtualGatewaysTest :: DescribeVirtualGateways -> TestTree
describeVirtualGatewaysTest = undefined

confirmPublicVirtualInterfaceTest :: ConfirmPublicVirtualInterface -> TestTree
confirmPublicVirtualInterfaceTest = undefined

describeVirtualInterfacesTest :: DescribeVirtualInterfaces -> TestTree
describeVirtualInterfacesTest = undefined

createPrivateVirtualInterfaceTest :: CreatePrivateVirtualInterface -> TestTree
createPrivateVirtualInterfaceTest = undefined

deleteVirtualInterfaceTest :: DeleteVirtualInterface -> TestTree
deleteVirtualInterfaceTest = undefined

allocatePublicVirtualInterfaceTest :: AllocatePublicVirtualInterface -> TestTree
allocatePublicVirtualInterfaceTest = undefined

allocateConnectionOnInterconnectTest :: AllocateConnectionOnInterconnect -> TestTree
allocateConnectionOnInterconnectTest = undefined

createInterconnectTest :: CreateInterconnect -> TestTree
createInterconnectTest = undefined

-- Responses

describeInterconnectsResponseTest :: DescribeInterconnectsResponse -> TestTree
describeInterconnectsResponseTest = resp
    "DescribeInterconnectsResponse"
    "fixture/DescribeInterconnectsResponse"
    (Proxy :: Proxy DescribeInterconnects)

connectionTest :: Connection -> TestTree
connectionTest = resp
    "Connection"
    "fixture/Connection"
    (Proxy :: Proxy DeleteConnection)

connectionTest :: Connection -> TestTree
connectionTest = resp
    "Connection"
    "fixture/Connection"
    (Proxy :: Proxy CreateConnection)

connectionsTest :: Connections -> TestTree
connectionsTest = resp
    "Connections"
    "fixture/Connections"
    (Proxy :: Proxy DescribeConnections)

deleteInterconnectResponseTest :: DeleteInterconnectResponse -> TestTree
deleteInterconnectResponseTest = resp
    "DeleteInterconnectResponse"
    "fixture/DeleteInterconnectResponse"
    (Proxy :: Proxy DeleteInterconnect)

confirmPrivateVirtualInterfaceResponseTest :: ConfirmPrivateVirtualInterfaceResponse -> TestTree
confirmPrivateVirtualInterfaceResponseTest = resp
    "ConfirmPrivateVirtualInterfaceResponse"
    "fixture/ConfirmPrivateVirtualInterfaceResponse"
    (Proxy :: Proxy ConfirmPrivateVirtualInterface)

connectionsTest :: Connections -> TestTree
connectionsTest = resp
    "Connections"
    "fixture/Connections"
    (Proxy :: Proxy DescribeConnectionsOnInterconnect)

describeLocationsResponseTest :: DescribeLocationsResponse -> TestTree
describeLocationsResponseTest = resp
    "DescribeLocationsResponse"
    "fixture/DescribeLocationsResponse"
    (Proxy :: Proxy DescribeLocations)

virtualInterfaceTest :: VirtualInterface -> TestTree
virtualInterfaceTest = resp
    "VirtualInterface"
    "fixture/VirtualInterface"
    (Proxy :: Proxy CreatePublicVirtualInterface)

virtualInterfaceTest :: VirtualInterface -> TestTree
virtualInterfaceTest = resp
    "VirtualInterface"
    "fixture/VirtualInterface"
    (Proxy :: Proxy AllocatePrivateVirtualInterface)

confirmConnectionResponseTest :: ConfirmConnectionResponse -> TestTree
confirmConnectionResponseTest = resp
    "ConfirmConnectionResponse"
    "fixture/ConfirmConnectionResponse"
    (Proxy :: Proxy ConfirmConnection)

describeVirtualGatewaysResponseTest :: DescribeVirtualGatewaysResponse -> TestTree
describeVirtualGatewaysResponseTest = resp
    "DescribeVirtualGatewaysResponse"
    "fixture/DescribeVirtualGatewaysResponse"
    (Proxy :: Proxy DescribeVirtualGateways)

confirmPublicVirtualInterfaceResponseTest :: ConfirmPublicVirtualInterfaceResponse -> TestTree
confirmPublicVirtualInterfaceResponseTest = resp
    "ConfirmPublicVirtualInterfaceResponse"
    "fixture/ConfirmPublicVirtualInterfaceResponse"
    (Proxy :: Proxy ConfirmPublicVirtualInterface)

describeVirtualInterfacesResponseTest :: DescribeVirtualInterfacesResponse -> TestTree
describeVirtualInterfacesResponseTest = resp
    "DescribeVirtualInterfacesResponse"
    "fixture/DescribeVirtualInterfacesResponse"
    (Proxy :: Proxy DescribeVirtualInterfaces)

virtualInterfaceTest :: VirtualInterface -> TestTree
virtualInterfaceTest = resp
    "VirtualInterface"
    "fixture/VirtualInterface"
    (Proxy :: Proxy CreatePrivateVirtualInterface)

deleteVirtualInterfaceResponseTest :: DeleteVirtualInterfaceResponse -> TestTree
deleteVirtualInterfaceResponseTest = resp
    "DeleteVirtualInterfaceResponse"
    "fixture/DeleteVirtualInterfaceResponse"
    (Proxy :: Proxy DeleteVirtualInterface)

virtualInterfaceTest :: VirtualInterface -> TestTree
virtualInterfaceTest = resp
    "VirtualInterface"
    "fixture/VirtualInterface"
    (Proxy :: Proxy AllocatePublicVirtualInterface)

connectionTest :: Connection -> TestTree
connectionTest = resp
    "Connection"
    "fixture/Connection"
    (Proxy :: Proxy AllocateConnectionOnInterconnect)

interconnectTest :: Interconnect -> TestTree
interconnectTest = resp
    "Interconnect"
    "fixture/Interconnect"
    (Proxy :: Proxy CreateInterconnect)
