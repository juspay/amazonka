{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ConnectCases.Types.RelatedItemContent
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ConnectCases.Types.RelatedItemContent where

import Amazonka.ConnectCases.Types.CommentContent
import Amazonka.ConnectCases.Types.ContactContent
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Represents the content of a particular type of related item.
--
-- /See:/ 'newRelatedItemContent' smart constructor.
data RelatedItemContent = RelatedItemContent'
  { -- | Represents the content of a contact to be returned to agents.
    contact :: Prelude.Maybe ContactContent,
    -- | Represents the content of a comment to be returned to agents.
    comment :: Prelude.Maybe CommentContent
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RelatedItemContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contact', 'relatedItemContent_contact' - Represents the content of a contact to be returned to agents.
--
-- 'comment', 'relatedItemContent_comment' - Represents the content of a comment to be returned to agents.
newRelatedItemContent ::
  RelatedItemContent
newRelatedItemContent =
  RelatedItemContent'
    { contact = Prelude.Nothing,
      comment = Prelude.Nothing
    }

-- | Represents the content of a contact to be returned to agents.
relatedItemContent_contact :: Lens.Lens' RelatedItemContent (Prelude.Maybe ContactContent)
relatedItemContent_contact = Lens.lens (\RelatedItemContent' {contact} -> contact) (\s@RelatedItemContent' {} a -> s {contact = a} :: RelatedItemContent)

-- | Represents the content of a comment to be returned to agents.
relatedItemContent_comment :: Lens.Lens' RelatedItemContent (Prelude.Maybe CommentContent)
relatedItemContent_comment = Lens.lens (\RelatedItemContent' {comment} -> comment) (\s@RelatedItemContent' {} a -> s {comment = a} :: RelatedItemContent)

instance Core.FromJSON RelatedItemContent where
  parseJSON =
    Core.withObject
      "RelatedItemContent"
      ( \x ->
          RelatedItemContent'
            Prelude.<$> (x Core..:? "contact")
            Prelude.<*> (x Core..:? "comment")
      )

instance Prelude.Hashable RelatedItemContent where
  hashWithSalt _salt RelatedItemContent' {..} =
    _salt `Prelude.hashWithSalt` contact
      `Prelude.hashWithSalt` comment

instance Prelude.NFData RelatedItemContent where
  rnf RelatedItemContent' {..} =
    Prelude.rnf contact
      `Prelude.seq` Prelude.rnf comment
