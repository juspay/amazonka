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
-- Module      : Amazonka.APIGateway.UpdateStage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a Stage resource.
module Amazonka.APIGateway.UpdateStage
  ( -- * Creating a Request
    UpdateStage (..),
    newUpdateStage,

    -- * Request Lenses
    updateStage_patchOperations,
    updateStage_restApiId,
    updateStage_stageName,

    -- * Destructuring the Response
    Stage (..),
    newStage,

    -- * Response Lenses
    stage_tags,
    stage_webAclArn,
    stage_stageName,
    stage_cacheClusterEnabled,
    stage_accessLogSettings,
    stage_cacheClusterStatus,
    stage_deploymentId,
    stage_lastUpdatedDate,
    stage_methodSettings,
    stage_description,
    stage_tracingEnabled,
    stage_clientCertificateId,
    stage_cacheClusterSize,
    stage_canarySettings,
    stage_createdDate,
    stage_documentationVersion,
    stage_variables,
  )
where

import Amazonka.APIGateway.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Requests API Gateway to change information about a Stage resource.
--
-- /See:/ 'newUpdateStage' smart constructor.
data UpdateStage = UpdateStage'
  { -- | For more information about supported patch operations, see
    -- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
    patchOperations :: Prelude.Maybe [PatchOperation],
    -- | The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | The name of the Stage resource to change information about.
    stageName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateStage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateStage_patchOperations' - For more information about supported patch operations, see
-- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
--
-- 'restApiId', 'updateStage_restApiId' - The string identifier of the associated RestApi.
--
-- 'stageName', 'updateStage_stageName' - The name of the Stage resource to change information about.
newUpdateStage ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'stageName'
  Prelude.Text ->
  UpdateStage
newUpdateStage pRestApiId_ pStageName_ =
  UpdateStage'
    { patchOperations = Prelude.Nothing,
      restApiId = pRestApiId_,
      stageName = pStageName_
    }

-- | For more information about supported patch operations, see
-- <https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html Patch Operations>.
updateStage_patchOperations :: Lens.Lens' UpdateStage (Prelude.Maybe [PatchOperation])
updateStage_patchOperations = Lens.lens (\UpdateStage' {patchOperations} -> patchOperations) (\s@UpdateStage' {} a -> s {patchOperations = a} :: UpdateStage) Prelude.. Lens.mapping Lens.coerced

-- | The string identifier of the associated RestApi.
updateStage_restApiId :: Lens.Lens' UpdateStage Prelude.Text
updateStage_restApiId = Lens.lens (\UpdateStage' {restApiId} -> restApiId) (\s@UpdateStage' {} a -> s {restApiId = a} :: UpdateStage)

-- | The name of the Stage resource to change information about.
updateStage_stageName :: Lens.Lens' UpdateStage Prelude.Text
updateStage_stageName = Lens.lens (\UpdateStage' {stageName} -> stageName) (\s@UpdateStage' {} a -> s {stageName = a} :: UpdateStage)

instance Core.AWSRequest UpdateStage where
  type AWSResponse UpdateStage = Stage
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateStage where
  hashWithSalt _salt UpdateStage' {..} =
    _salt `Prelude.hashWithSalt` patchOperations
      `Prelude.hashWithSalt` restApiId
      `Prelude.hashWithSalt` stageName

instance Prelude.NFData UpdateStage where
  rnf UpdateStage' {..} =
    Prelude.rnf patchOperations
      `Prelude.seq` Prelude.rnf restApiId
      `Prelude.seq` Prelude.rnf stageName

instance Core.ToHeaders UpdateStage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Core.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Core.ToJSON UpdateStage where
  toJSON UpdateStage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("patchOperations" Core..=)
              Prelude.<$> patchOperations
          ]
      )

instance Core.ToPath UpdateStage where
  toPath UpdateStage' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Core.toBS restApiId,
        "/stages/",
        Core.toBS stageName
      ]

instance Core.ToQuery UpdateStage where
  toQuery = Prelude.const Prelude.mempty
