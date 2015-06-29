-- Module      : Test.AWS.Gen.CloudWatch
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

module Test.AWS.Gen.CloudWatch where

import Data.Proxy
import Test.AWS.Fixture
import Test.Tasty
import Network.AWS.CloudWatch

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures = testGroup "SQS"
--     [ testGroup "request"
--         [ enableAlarmActionsTest $
--             enableAlarmActions
--
--         , putMetricDataTest $
--             putMetricData
--
--         , describeAlarmsTest $
--             describeAlarms
--
--         , listMetricsTest $
--             listMetrics
--
--         , deleteAlarmsTest $
--             deleteAlarms
--
--         , describeAlarmHistoryTest $
--             describeAlarmHistory
--
--         , getMetricStatisticsTest $
--             getMetricStatistics
--
--         , disableAlarmActionsTest $
--             disableAlarmActions
--
--         , describeAlarmsForMetricTest $
--             describeAlarmsForMetric
--
--         , setAlarmStateTest $
--             setAlarmState
--
--         , putMetricAlarmTest $
--             putMetricAlarm
--
--           ]

--     , testGroup "response"
--         [ enableAlarmActionsResponseTest $
--             enableAlarmActionsResponse
--
--         , putMetricDataResponseTest $
--             putMetricDataResponse
--
--         , describeAlarmsResponseTest $
--             describeAlarmsResponse
--
--         , listMetricsResponseTest $
--             listMetricsResponse
--
--         , deleteAlarmsResponseTest $
--             deleteAlarmsResponse
--
--         , describeAlarmHistoryResponseTest $
--             describeAlarmHistoryResponse
--
--         , getMetricStatisticsResponseTest $
--             getMetricStatisticsResponse
--
--         , disableAlarmActionsResponseTest $
--             disableAlarmActionsResponse
--
--         , describeAlarmsForMetricResponseTest $
--             describeAlarmsForMetricResponse
--
--         , setAlarmStateResponseTest $
--             setAlarmStateResponse
--
--         , putMetricAlarmResponseTest $
--             putMetricAlarmResponse
--
--           ]
--     ]

-- Requests

enableAlarmActionsTest :: EnableAlarmActions -> TestTree
enableAlarmActionsTest = undefined

putMetricDataTest :: PutMetricData -> TestTree
putMetricDataTest = undefined

describeAlarmsTest :: DescribeAlarms -> TestTree
describeAlarmsTest = undefined

listMetricsTest :: ListMetrics -> TestTree
listMetricsTest = undefined

deleteAlarmsTest :: DeleteAlarms -> TestTree
deleteAlarmsTest = undefined

describeAlarmHistoryTest :: DescribeAlarmHistory -> TestTree
describeAlarmHistoryTest = undefined

getMetricStatisticsTest :: GetMetricStatistics -> TestTree
getMetricStatisticsTest = undefined

disableAlarmActionsTest :: DisableAlarmActions -> TestTree
disableAlarmActionsTest = undefined

describeAlarmsForMetricTest :: DescribeAlarmsForMetric -> TestTree
describeAlarmsForMetricTest = undefined

setAlarmStateTest :: SetAlarmState -> TestTree
setAlarmStateTest = undefined

putMetricAlarmTest :: PutMetricAlarm -> TestTree
putMetricAlarmTest = undefined

-- Responses

enableAlarmActionsResponseTest :: EnableAlarmActionsResponse -> TestTree
enableAlarmActionsResponseTest = resp
    "EnableAlarmActionsResponse"
    "fixture/EnableAlarmActionsResponse"
    (Proxy :: Proxy EnableAlarmActions)

putMetricDataResponseTest :: PutMetricDataResponse -> TestTree
putMetricDataResponseTest = resp
    "PutMetricDataResponse"
    "fixture/PutMetricDataResponse"
    (Proxy :: Proxy PutMetricData)

describeAlarmsResponseTest :: DescribeAlarmsResponse -> TestTree
describeAlarmsResponseTest = resp
    "DescribeAlarmsResponse"
    "fixture/DescribeAlarmsResponse"
    (Proxy :: Proxy DescribeAlarms)

listMetricsResponseTest :: ListMetricsResponse -> TestTree
listMetricsResponseTest = resp
    "ListMetricsResponse"
    "fixture/ListMetricsResponse"
    (Proxy :: Proxy ListMetrics)

deleteAlarmsResponseTest :: DeleteAlarmsResponse -> TestTree
deleteAlarmsResponseTest = resp
    "DeleteAlarmsResponse"
    "fixture/DeleteAlarmsResponse"
    (Proxy :: Proxy DeleteAlarms)

describeAlarmHistoryResponseTest :: DescribeAlarmHistoryResponse -> TestTree
describeAlarmHistoryResponseTest = resp
    "DescribeAlarmHistoryResponse"
    "fixture/DescribeAlarmHistoryResponse"
    (Proxy :: Proxy DescribeAlarmHistory)

getMetricStatisticsResponseTest :: GetMetricStatisticsResponse -> TestTree
getMetricStatisticsResponseTest = resp
    "GetMetricStatisticsResponse"
    "fixture/GetMetricStatisticsResponse"
    (Proxy :: Proxy GetMetricStatistics)

disableAlarmActionsResponseTest :: DisableAlarmActionsResponse -> TestTree
disableAlarmActionsResponseTest = resp
    "DisableAlarmActionsResponse"
    "fixture/DisableAlarmActionsResponse"
    (Proxy :: Proxy DisableAlarmActions)

describeAlarmsForMetricResponseTest :: DescribeAlarmsForMetricResponse -> TestTree
describeAlarmsForMetricResponseTest = resp
    "DescribeAlarmsForMetricResponse"
    "fixture/DescribeAlarmsForMetricResponse"
    (Proxy :: Proxy DescribeAlarmsForMetric)

setAlarmStateResponseTest :: SetAlarmStateResponse -> TestTree
setAlarmStateResponseTest = resp
    "SetAlarmStateResponse"
    "fixture/SetAlarmStateResponse"
    (Proxy :: Proxy SetAlarmState)

putMetricAlarmResponseTest :: PutMetricAlarmResponse -> TestTree
putMetricAlarmResponseTest = resp
    "PutMetricAlarmResponse"
    "fixture/PutMetricAlarmResponse"
    (Proxy :: Proxy PutMetricAlarm)
