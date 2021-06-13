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
-- Module      : Network.AWS.Lightsail.GetDisks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about all block storage disks in your AWS account
-- and region.
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDisks
  ( -- * Creating a Request
    GetDisks (..),
    newGetDisks,

    -- * Request Lenses
    getDisks_pageToken,

    -- * Destructuring the Response
    GetDisksResponse (..),
    newGetDisksResponse,

    -- * Response Lenses
    getDisksResponse_nextPageToken,
    getDisksResponse_disks,
    getDisksResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDisks' smart constructor.
data GetDisks = GetDisks'
  { -- | The token to advance to the next page of results from your request.
    --
    -- To get a page token, perform an initial @GetDisks@ request. If your
    -- results are paginated, the response will return a next page token that
    -- you can specify as the page token in a subsequent request.
    pageToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDisks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageToken', 'getDisks_pageToken' - The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDisks@ request. If your
-- results are paginated, the response will return a next page token that
-- you can specify as the page token in a subsequent request.
newGetDisks ::
  GetDisks
newGetDisks = GetDisks' {pageToken = Prelude.Nothing}

-- | The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDisks@ request. If your
-- results are paginated, the response will return a next page token that
-- you can specify as the page token in a subsequent request.
getDisks_pageToken :: Lens.Lens' GetDisks (Prelude.Maybe Prelude.Text)
getDisks_pageToken = Lens.lens (\GetDisks' {pageToken} -> pageToken) (\s@GetDisks' {} a -> s {pageToken = a} :: GetDisks)

instance Core.AWSPager GetDisks where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getDisksResponse_nextPageToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getDisksResponse_disks Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getDisks_pageToken
          Lens..~ rs
          Lens.^? getDisksResponse_nextPageToken Prelude.. Lens._Just

instance Core.AWSRequest GetDisks where
  type AWSResponse GetDisks = GetDisksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDisksResponse'
            Prelude.<$> (x Core..?> "nextPageToken")
            Prelude.<*> (x Core..?> "disks" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDisks

instance Prelude.NFData GetDisks

instance Core.ToHeaders GetDisks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Lightsail_20161128.GetDisks" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetDisks where
  toJSON GetDisks' {..} =
    Core.object
      ( Prelude.catMaybes
          [("pageToken" Core..=) Prelude.<$> pageToken]
      )

instance Core.ToPath GetDisks where
  toPath = Prelude.const "/"

instance Core.ToQuery GetDisks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDisksResponse' smart constructor.
data GetDisksResponse = GetDisksResponse'
  { -- | The token to advance to the next page of results from your request.
    --
    -- A next page token is not returned if there are no more results to
    -- display.
    --
    -- To get the next page of results, perform another @GetDisks@ request and
    -- specify the next page token using the @pageToken@ parameter.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects containing information about all block storage
    -- disks.
    disks :: Prelude.Maybe [Disk],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDisksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'getDisksResponse_nextPageToken' - The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another @GetDisks@ request and
-- specify the next page token using the @pageToken@ parameter.
--
-- 'disks', 'getDisksResponse_disks' - An array of objects containing information about all block storage
-- disks.
--
-- 'httpStatus', 'getDisksResponse_httpStatus' - The response's http status code.
newGetDisksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDisksResponse
newGetDisksResponse pHttpStatus_ =
  GetDisksResponse'
    { nextPageToken = Prelude.Nothing,
      disks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to
-- display.
--
-- To get the next page of results, perform another @GetDisks@ request and
-- specify the next page token using the @pageToken@ parameter.
getDisksResponse_nextPageToken :: Lens.Lens' GetDisksResponse (Prelude.Maybe Prelude.Text)
getDisksResponse_nextPageToken = Lens.lens (\GetDisksResponse' {nextPageToken} -> nextPageToken) (\s@GetDisksResponse' {} a -> s {nextPageToken = a} :: GetDisksResponse)

-- | An array of objects containing information about all block storage
-- disks.
getDisksResponse_disks :: Lens.Lens' GetDisksResponse (Prelude.Maybe [Disk])
getDisksResponse_disks = Lens.lens (\GetDisksResponse' {disks} -> disks) (\s@GetDisksResponse' {} a -> s {disks = a} :: GetDisksResponse) Prelude.. Lens.mapping Lens._Coerce

-- | The response's http status code.
getDisksResponse_httpStatus :: Lens.Lens' GetDisksResponse Prelude.Int
getDisksResponse_httpStatus = Lens.lens (\GetDisksResponse' {httpStatus} -> httpStatus) (\s@GetDisksResponse' {} a -> s {httpStatus = a} :: GetDisksResponse)

instance Prelude.NFData GetDisksResponse
