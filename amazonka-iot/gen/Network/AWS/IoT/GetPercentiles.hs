{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.GetPercentiles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Groups the aggregated values that match the query into percentile
-- groupings. The default percentile groupings are: 1,5,25,50,75,95,99,
-- although you can specify your own when you call @GetPercentiles@. This
-- function returns a value for each percentile group specified (or the
-- default percentile groupings). The percentile group \"1\" contains the
-- aggregated field value that occurs in approximately one percent of the
-- values that match the query. The percentile group \"5\" contains the
-- aggregated field value that occurs in approximately five percent of the
-- values that match the query, and so on. The result is an approximation,
-- the more values that match the query, the more accurate the percentile
-- values.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions GetPercentiles>
-- action.
module Network.AWS.IoT.GetPercentiles
  ( -- * Creating a Request
    GetPercentiles (..),
    newGetPercentiles,

    -- * Request Lenses
    getPercentiles_indexName,
    getPercentiles_percents,
    getPercentiles_queryVersion,
    getPercentiles_aggregationField,
    getPercentiles_queryString,

    -- * Destructuring the Response
    GetPercentilesResponse (..),
    newGetPercentilesResponse,

    -- * Response Lenses
    getPercentilesResponse_percentiles,
    getPercentilesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPercentiles' smart constructor.
data GetPercentiles = GetPercentiles'
  { -- | The name of the index to search.
    indexName :: Prelude.Maybe Prelude.Text,
    -- | The percentile groups returned.
    percents :: Prelude.Maybe [Prelude.Double],
    -- | The query version.
    queryVersion :: Prelude.Maybe Prelude.Text,
    -- | The field to aggregate.
    aggregationField :: Prelude.Maybe Prelude.Text,
    -- | The search query string.
    queryString :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPercentiles' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'indexName', 'getPercentiles_indexName' - The name of the index to search.
--
-- 'percents', 'getPercentiles_percents' - The percentile groups returned.
--
-- 'queryVersion', 'getPercentiles_queryVersion' - The query version.
--
-- 'aggregationField', 'getPercentiles_aggregationField' - The field to aggregate.
--
-- 'queryString', 'getPercentiles_queryString' - The search query string.
newGetPercentiles ::
  -- | 'queryString'
  Prelude.Text ->
  GetPercentiles
newGetPercentiles pQueryString_ =
  GetPercentiles'
    { indexName = Prelude.Nothing,
      percents = Prelude.Nothing,
      queryVersion = Prelude.Nothing,
      aggregationField = Prelude.Nothing,
      queryString = pQueryString_
    }

-- | The name of the index to search.
getPercentiles_indexName :: Lens.Lens' GetPercentiles (Prelude.Maybe Prelude.Text)
getPercentiles_indexName = Lens.lens (\GetPercentiles' {indexName} -> indexName) (\s@GetPercentiles' {} a -> s {indexName = a} :: GetPercentiles)

-- | The percentile groups returned.
getPercentiles_percents :: Lens.Lens' GetPercentiles (Prelude.Maybe [Prelude.Double])
getPercentiles_percents = Lens.lens (\GetPercentiles' {percents} -> percents) (\s@GetPercentiles' {} a -> s {percents = a} :: GetPercentiles) Prelude.. Lens.mapping Lens._Coerce

-- | The query version.
getPercentiles_queryVersion :: Lens.Lens' GetPercentiles (Prelude.Maybe Prelude.Text)
getPercentiles_queryVersion = Lens.lens (\GetPercentiles' {queryVersion} -> queryVersion) (\s@GetPercentiles' {} a -> s {queryVersion = a} :: GetPercentiles)

-- | The field to aggregate.
getPercentiles_aggregationField :: Lens.Lens' GetPercentiles (Prelude.Maybe Prelude.Text)
getPercentiles_aggregationField = Lens.lens (\GetPercentiles' {aggregationField} -> aggregationField) (\s@GetPercentiles' {} a -> s {aggregationField = a} :: GetPercentiles)

-- | The search query string.
getPercentiles_queryString :: Lens.Lens' GetPercentiles Prelude.Text
getPercentiles_queryString = Lens.lens (\GetPercentiles' {queryString} -> queryString) (\s@GetPercentiles' {} a -> s {queryString = a} :: GetPercentiles)

instance Core.AWSRequest GetPercentiles where
  type
    AWSResponse GetPercentiles =
      GetPercentilesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPercentilesResponse'
            Prelude.<$> (x Core..?> "percentiles" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPercentiles

instance Prelude.NFData GetPercentiles

instance Core.ToHeaders GetPercentiles where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON GetPercentiles where
  toJSON GetPercentiles' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("indexName" Core..=) Prelude.<$> indexName,
            ("percents" Core..=) Prelude.<$> percents,
            ("queryVersion" Core..=) Prelude.<$> queryVersion,
            ("aggregationField" Core..=)
              Prelude.<$> aggregationField,
            Prelude.Just ("queryString" Core..= queryString)
          ]
      )

instance Core.ToPath GetPercentiles where
  toPath = Prelude.const "/indices/percentiles"

instance Core.ToQuery GetPercentiles where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPercentilesResponse' smart constructor.
data GetPercentilesResponse = GetPercentilesResponse'
  { -- | The percentile values of the aggregated fields.
    percentiles :: Prelude.Maybe [PercentPair],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPercentilesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'percentiles', 'getPercentilesResponse_percentiles' - The percentile values of the aggregated fields.
--
-- 'httpStatus', 'getPercentilesResponse_httpStatus' - The response's http status code.
newGetPercentilesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPercentilesResponse
newGetPercentilesResponse pHttpStatus_ =
  GetPercentilesResponse'
    { percentiles =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The percentile values of the aggregated fields.
getPercentilesResponse_percentiles :: Lens.Lens' GetPercentilesResponse (Prelude.Maybe [PercentPair])
getPercentilesResponse_percentiles = Lens.lens (\GetPercentilesResponse' {percentiles} -> percentiles) (\s@GetPercentilesResponse' {} a -> s {percentiles = a} :: GetPercentilesResponse) Prelude.. Lens.mapping Lens._Coerce

-- | The response's http status code.
getPercentilesResponse_httpStatus :: Lens.Lens' GetPercentilesResponse Prelude.Int
getPercentilesResponse_httpStatus = Lens.lens (\GetPercentilesResponse' {httpStatus} -> httpStatus) (\s@GetPercentilesResponse' {} a -> s {httpStatus = a} :: GetPercentilesResponse)

instance Prelude.NFData GetPercentilesResponse
