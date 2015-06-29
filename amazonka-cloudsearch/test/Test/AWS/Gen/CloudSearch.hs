-- Module      : Test.AWS.Gen.CloudSearch
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

module Test.AWS.Gen.CloudSearch where

import Data.Proxy
import Test.AWS.Fixture
import Test.Tasty
import Network.AWS.CloudSearch

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures = testGroup "SQS"
--     [ testGroup "request"
--         [ describeAvailabilityOptionsTest $
--             describeAvailabilityOptions
--
--         , describeExpressionsTest $
--             describeExpressions
--
--         , defineExpressionTest $
--             defineExpression
--
--         , describeScalingParametersTest $
--             describeScalingParameters
--
--         , describeServiceAccessPoliciesTest $
--             describeServiceAccessPolicies
--
--         , describeSuggestersTest $
--             describeSuggesters
--
--         , updateAvailabilityOptionsTest $
--             updateAvailabilityOptions
--
--         , deleteExpressionTest $
--             deleteExpression
--
--         , describeDomainsTest $
--             describeDomains
--
--         , defineSuggesterTest $
--             defineSuggester
--
--         , deleteAnalysisSchemeTest $
--             deleteAnalysisScheme
--
--         , listDomainNamesTest $
--             listDomainNames
--
--         , describeAnalysisSchemesTest $
--             describeAnalysisSchemes
--
--         , createDomainTest $
--             createDomain
--
--         , defineAnalysisSchemeTest $
--             defineAnalysisScheme
--
--         , deleteSuggesterTest $
--             deleteSuggester
--
--         , describeIndexFieldsTest $
--             describeIndexFields
--
--         , indexDocumentsTest $
--             indexDocuments
--
--         , deleteIndexFieldTest $
--             deleteIndexField
--
--         , buildSuggestersTest $
--             buildSuggesters
--
--         , updateScalingParametersTest $
--             updateScalingParameters
--
--         , updateServiceAccessPoliciesTest $
--             updateServiceAccessPolicies
--
--         , defineIndexFieldTest $
--             defineIndexField
--
--         , deleteDomainTest $
--             deleteDomain
--
--           ]

--     , testGroup "response"
--         [ describeAvailabilityOptionsResponseTest $
--             describeAvailabilityOptionsResponse
--
--         , describeExpressionsResponseTest $
--             describeExpressionsResponse
--
--         , defineExpressionResponseTest $
--             defineExpressionResponse
--
--         , describeScalingParametersResponseTest $
--             describeScalingParametersResponse
--
--         , describeServiceAccessPoliciesResponseTest $
--             describeServiceAccessPoliciesResponse
--
--         , describeSuggestersResponseTest $
--             describeSuggestersResponse
--
--         , updateAvailabilityOptionsResponseTest $
--             updateAvailabilityOptionsResponse
--
--         , deleteExpressionResponseTest $
--             deleteExpressionResponse
--
--         , describeDomainsResponseTest $
--             describeDomainsResponse
--
--         , defineSuggesterResponseTest $
--             defineSuggesterResponse
--
--         , deleteAnalysisSchemeResponseTest $
--             deleteAnalysisSchemeResponse
--
--         , listDomainNamesResponseTest $
--             listDomainNamesResponse
--
--         , describeAnalysisSchemesResponseTest $
--             describeAnalysisSchemesResponse
--
--         , createDomainResponseTest $
--             createDomainResponse
--
--         , defineAnalysisSchemeResponseTest $
--             defineAnalysisSchemeResponse
--
--         , deleteSuggesterResponseTest $
--             deleteSuggesterResponse
--
--         , describeIndexFieldsResponseTest $
--             describeIndexFieldsResponse
--
--         , indexDocumentsResponseTest $
--             indexDocumentsResponse
--
--         , deleteIndexFieldResponseTest $
--             deleteIndexFieldResponse
--
--         , buildSuggestersResponseTest $
--             buildSuggestersResponse
--
--         , updateScalingParametersResponseTest $
--             updateScalingParametersResponse
--
--         , updateServiceAccessPoliciesResponseTest $
--             updateServiceAccessPoliciesResponse
--
--         , defineIndexFieldResponseTest $
--             defineIndexFieldResponse
--
--         , deleteDomainResponseTest $
--             deleteDomainResponse
--
--           ]
--     ]

-- Requests

describeAvailabilityOptionsTest :: DescribeAvailabilityOptions -> TestTree
describeAvailabilityOptionsTest = undefined

describeExpressionsTest :: DescribeExpressions -> TestTree
describeExpressionsTest = undefined

defineExpressionTest :: DefineExpression -> TestTree
defineExpressionTest = undefined

describeScalingParametersTest :: DescribeScalingParameters -> TestTree
describeScalingParametersTest = undefined

describeServiceAccessPoliciesTest :: DescribeServiceAccessPolicies -> TestTree
describeServiceAccessPoliciesTest = undefined

describeSuggestersTest :: DescribeSuggesters -> TestTree
describeSuggestersTest = undefined

updateAvailabilityOptionsTest :: UpdateAvailabilityOptions -> TestTree
updateAvailabilityOptionsTest = undefined

deleteExpressionTest :: DeleteExpression -> TestTree
deleteExpressionTest = undefined

describeDomainsTest :: DescribeDomains -> TestTree
describeDomainsTest = undefined

defineSuggesterTest :: DefineSuggester -> TestTree
defineSuggesterTest = undefined

deleteAnalysisSchemeTest :: DeleteAnalysisScheme -> TestTree
deleteAnalysisSchemeTest = undefined

listDomainNamesTest :: ListDomainNames -> TestTree
listDomainNamesTest = undefined

describeAnalysisSchemesTest :: DescribeAnalysisSchemes -> TestTree
describeAnalysisSchemesTest = undefined

createDomainTest :: CreateDomain -> TestTree
createDomainTest = undefined

defineAnalysisSchemeTest :: DefineAnalysisScheme -> TestTree
defineAnalysisSchemeTest = undefined

deleteSuggesterTest :: DeleteSuggester -> TestTree
deleteSuggesterTest = undefined

describeIndexFieldsTest :: DescribeIndexFields -> TestTree
describeIndexFieldsTest = undefined

indexDocumentsTest :: IndexDocuments -> TestTree
indexDocumentsTest = undefined

deleteIndexFieldTest :: DeleteIndexField -> TestTree
deleteIndexFieldTest = undefined

buildSuggestersTest :: BuildSuggesters -> TestTree
buildSuggestersTest = undefined

updateScalingParametersTest :: UpdateScalingParameters -> TestTree
updateScalingParametersTest = undefined

updateServiceAccessPoliciesTest :: UpdateServiceAccessPolicies -> TestTree
updateServiceAccessPoliciesTest = undefined

defineIndexFieldTest :: DefineIndexField -> TestTree
defineIndexFieldTest = undefined

deleteDomainTest :: DeleteDomain -> TestTree
deleteDomainTest = undefined

-- Responses

describeAvailabilityOptionsResponseTest :: DescribeAvailabilityOptionsResponse -> TestTree
describeAvailabilityOptionsResponseTest = resp
    "DescribeAvailabilityOptionsResponse"
    "fixture/DescribeAvailabilityOptionsResponse"
    (Proxy :: Proxy DescribeAvailabilityOptions)

describeExpressionsResponseTest :: DescribeExpressionsResponse -> TestTree
describeExpressionsResponseTest = resp
    "DescribeExpressionsResponse"
    "fixture/DescribeExpressionsResponse"
    (Proxy :: Proxy DescribeExpressions)

defineExpressionResponseTest :: DefineExpressionResponse -> TestTree
defineExpressionResponseTest = resp
    "DefineExpressionResponse"
    "fixture/DefineExpressionResponse"
    (Proxy :: Proxy DefineExpression)

describeScalingParametersResponseTest :: DescribeScalingParametersResponse -> TestTree
describeScalingParametersResponseTest = resp
    "DescribeScalingParametersResponse"
    "fixture/DescribeScalingParametersResponse"
    (Proxy :: Proxy DescribeScalingParameters)

describeServiceAccessPoliciesResponseTest :: DescribeServiceAccessPoliciesResponse -> TestTree
describeServiceAccessPoliciesResponseTest = resp
    "DescribeServiceAccessPoliciesResponse"
    "fixture/DescribeServiceAccessPoliciesResponse"
    (Proxy :: Proxy DescribeServiceAccessPolicies)

describeSuggestersResponseTest :: DescribeSuggestersResponse -> TestTree
describeSuggestersResponseTest = resp
    "DescribeSuggestersResponse"
    "fixture/DescribeSuggestersResponse"
    (Proxy :: Proxy DescribeSuggesters)

updateAvailabilityOptionsResponseTest :: UpdateAvailabilityOptionsResponse -> TestTree
updateAvailabilityOptionsResponseTest = resp
    "UpdateAvailabilityOptionsResponse"
    "fixture/UpdateAvailabilityOptionsResponse"
    (Proxy :: Proxy UpdateAvailabilityOptions)

deleteExpressionResponseTest :: DeleteExpressionResponse -> TestTree
deleteExpressionResponseTest = resp
    "DeleteExpressionResponse"
    "fixture/DeleteExpressionResponse"
    (Proxy :: Proxy DeleteExpression)

describeDomainsResponseTest :: DescribeDomainsResponse -> TestTree
describeDomainsResponseTest = resp
    "DescribeDomainsResponse"
    "fixture/DescribeDomainsResponse"
    (Proxy :: Proxy DescribeDomains)

defineSuggesterResponseTest :: DefineSuggesterResponse -> TestTree
defineSuggesterResponseTest = resp
    "DefineSuggesterResponse"
    "fixture/DefineSuggesterResponse"
    (Proxy :: Proxy DefineSuggester)

deleteAnalysisSchemeResponseTest :: DeleteAnalysisSchemeResponse -> TestTree
deleteAnalysisSchemeResponseTest = resp
    "DeleteAnalysisSchemeResponse"
    "fixture/DeleteAnalysisSchemeResponse"
    (Proxy :: Proxy DeleteAnalysisScheme)

listDomainNamesResponseTest :: ListDomainNamesResponse -> TestTree
listDomainNamesResponseTest = resp
    "ListDomainNamesResponse"
    "fixture/ListDomainNamesResponse"
    (Proxy :: Proxy ListDomainNames)

describeAnalysisSchemesResponseTest :: DescribeAnalysisSchemesResponse -> TestTree
describeAnalysisSchemesResponseTest = resp
    "DescribeAnalysisSchemesResponse"
    "fixture/DescribeAnalysisSchemesResponse"
    (Proxy :: Proxy DescribeAnalysisSchemes)

createDomainResponseTest :: CreateDomainResponse -> TestTree
createDomainResponseTest = resp
    "CreateDomainResponse"
    "fixture/CreateDomainResponse"
    (Proxy :: Proxy CreateDomain)

defineAnalysisSchemeResponseTest :: DefineAnalysisSchemeResponse -> TestTree
defineAnalysisSchemeResponseTest = resp
    "DefineAnalysisSchemeResponse"
    "fixture/DefineAnalysisSchemeResponse"
    (Proxy :: Proxy DefineAnalysisScheme)

deleteSuggesterResponseTest :: DeleteSuggesterResponse -> TestTree
deleteSuggesterResponseTest = resp
    "DeleteSuggesterResponse"
    "fixture/DeleteSuggesterResponse"
    (Proxy :: Proxy DeleteSuggester)

describeIndexFieldsResponseTest :: DescribeIndexFieldsResponse -> TestTree
describeIndexFieldsResponseTest = resp
    "DescribeIndexFieldsResponse"
    "fixture/DescribeIndexFieldsResponse"
    (Proxy :: Proxy DescribeIndexFields)

indexDocumentsResponseTest :: IndexDocumentsResponse -> TestTree
indexDocumentsResponseTest = resp
    "IndexDocumentsResponse"
    "fixture/IndexDocumentsResponse"
    (Proxy :: Proxy IndexDocuments)

deleteIndexFieldResponseTest :: DeleteIndexFieldResponse -> TestTree
deleteIndexFieldResponseTest = resp
    "DeleteIndexFieldResponse"
    "fixture/DeleteIndexFieldResponse"
    (Proxy :: Proxy DeleteIndexField)

buildSuggestersResponseTest :: BuildSuggestersResponse -> TestTree
buildSuggestersResponseTest = resp
    "BuildSuggestersResponse"
    "fixture/BuildSuggestersResponse"
    (Proxy :: Proxy BuildSuggesters)

updateScalingParametersResponseTest :: UpdateScalingParametersResponse -> TestTree
updateScalingParametersResponseTest = resp
    "UpdateScalingParametersResponse"
    "fixture/UpdateScalingParametersResponse"
    (Proxy :: Proxy UpdateScalingParameters)

updateServiceAccessPoliciesResponseTest :: UpdateServiceAccessPoliciesResponse -> TestTree
updateServiceAccessPoliciesResponseTest = resp
    "UpdateServiceAccessPoliciesResponse"
    "fixture/UpdateServiceAccessPoliciesResponse"
    (Proxy :: Proxy UpdateServiceAccessPolicies)

defineIndexFieldResponseTest :: DefineIndexFieldResponse -> TestTree
defineIndexFieldResponseTest = resp
    "DefineIndexFieldResponse"
    "fixture/DefineIndexFieldResponse"
    (Proxy :: Proxy DefineIndexField)

deleteDomainResponseTest :: DeleteDomainResponse -> TestTree
deleteDomainResponseTest = resp
    "DeleteDomainResponse"
    "fixture/DeleteDomainResponse"
    (Proxy :: Proxy DeleteDomain)
