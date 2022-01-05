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
-- Module      : Amazonka.Support.DescribeSeverityLevels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of severity levels that you can assign to a support
-- case. The severity level for a case is also a field in the CaseDetails
-- data type that you include for a CreateCase request.
--
-- -   You must have a Business or Enterprise Support plan to use the AWS
--     Support API.
--
-- -   If you call the AWS Support API from an account that does not have a
--     Business or Enterprise Support plan, the
--     @SubscriptionRequiredException@ error message appears. For
--     information about changing your support plan, see
--     <http://aws.amazon.com/premiumsupport/ AWS Support>.
module Amazonka.Support.DescribeSeverityLevels
  ( -- * Creating a Request
    DescribeSeverityLevels (..),
    newDescribeSeverityLevels,

    -- * Request Lenses
    describeSeverityLevels_language,

    -- * Destructuring the Response
    DescribeSeverityLevelsResponse (..),
    newDescribeSeverityLevelsResponse,

    -- * Response Lenses
    describeSeverityLevelsResponse_severityLevels,
    describeSeverityLevelsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Support.Types

-- | /See:/ 'newDescribeSeverityLevels' smart constructor.
data DescribeSeverityLevels = DescribeSeverityLevels'
  { -- | The ISO 639-1 code for the language in which AWS provides support. AWS
    -- Support currently supports English (\"en\") and Japanese (\"ja\").
    -- Language parameters must be passed explicitly for operations that take
    -- them.
    language :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSeverityLevels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'language', 'describeSeverityLevels_language' - The ISO 639-1 code for the language in which AWS provides support. AWS
-- Support currently supports English (\"en\") and Japanese (\"ja\").
-- Language parameters must be passed explicitly for operations that take
-- them.
newDescribeSeverityLevels ::
  DescribeSeverityLevels
newDescribeSeverityLevels =
  DescribeSeverityLevels' {language = Prelude.Nothing}

-- | The ISO 639-1 code for the language in which AWS provides support. AWS
-- Support currently supports English (\"en\") and Japanese (\"ja\").
-- Language parameters must be passed explicitly for operations that take
-- them.
describeSeverityLevels_language :: Lens.Lens' DescribeSeverityLevels (Prelude.Maybe Prelude.Text)
describeSeverityLevels_language = Lens.lens (\DescribeSeverityLevels' {language} -> language) (\s@DescribeSeverityLevels' {} a -> s {language = a} :: DescribeSeverityLevels)

instance Core.AWSRequest DescribeSeverityLevels where
  type
    AWSResponse DescribeSeverityLevels =
      DescribeSeverityLevelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSeverityLevelsResponse'
            Prelude.<$> (x Core..?> "severityLevels" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSeverityLevels where
  hashWithSalt _salt DescribeSeverityLevels' {..} =
    _salt `Prelude.hashWithSalt` language

instance Prelude.NFData DescribeSeverityLevels where
  rnf DescribeSeverityLevels' {..} =
    Prelude.rnf language

instance Core.ToHeaders DescribeSeverityLevels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSSupport_20130415.DescribeSeverityLevels" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeSeverityLevels where
  toJSON DescribeSeverityLevels' {..} =
    Core.object
      ( Prelude.catMaybes
          [("language" Core..=) Prelude.<$> language]
      )

instance Core.ToPath DescribeSeverityLevels where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSeverityLevels where
  toQuery = Prelude.const Prelude.mempty

-- | The list of severity levels returned by the DescribeSeverityLevels
-- operation.
--
-- /See:/ 'newDescribeSeverityLevelsResponse' smart constructor.
data DescribeSeverityLevelsResponse = DescribeSeverityLevelsResponse'
  { -- | The available severity levels for the support case. Available severity
    -- levels are defined by your service level agreement with AWS.
    severityLevels :: Prelude.Maybe [SeverityLevel],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSeverityLevelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'severityLevels', 'describeSeverityLevelsResponse_severityLevels' - The available severity levels for the support case. Available severity
-- levels are defined by your service level agreement with AWS.
--
-- 'httpStatus', 'describeSeverityLevelsResponse_httpStatus' - The response's http status code.
newDescribeSeverityLevelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSeverityLevelsResponse
newDescribeSeverityLevelsResponse pHttpStatus_ =
  DescribeSeverityLevelsResponse'
    { severityLevels =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The available severity levels for the support case. Available severity
-- levels are defined by your service level agreement with AWS.
describeSeverityLevelsResponse_severityLevels :: Lens.Lens' DescribeSeverityLevelsResponse (Prelude.Maybe [SeverityLevel])
describeSeverityLevelsResponse_severityLevels = Lens.lens (\DescribeSeverityLevelsResponse' {severityLevels} -> severityLevels) (\s@DescribeSeverityLevelsResponse' {} a -> s {severityLevels = a} :: DescribeSeverityLevelsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeSeverityLevelsResponse_httpStatus :: Lens.Lens' DescribeSeverityLevelsResponse Prelude.Int
describeSeverityLevelsResponse_httpStatus = Lens.lens (\DescribeSeverityLevelsResponse' {httpStatus} -> httpStatus) (\s@DescribeSeverityLevelsResponse' {} a -> s {httpStatus = a} :: DescribeSeverityLevelsResponse)

instance
  Prelude.NFData
    DescribeSeverityLevelsResponse
  where
  rnf DescribeSeverityLevelsResponse' {..} =
    Prelude.rnf severityLevels
      `Prelude.seq` Prelude.rnf httpStatus
