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
-- Module      : Amazonka.CognitoIdentity.Types.IdentityDescription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentity.Types.IdentityDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A description of the identity.
--
-- /See:/ 'newIdentityDescription' smart constructor.
data IdentityDescription = IdentityDescription'
  { -- | The provider names.
    logins :: Prelude.Maybe [Prelude.Text],
    -- | Date on which the identity was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | Date on which the identity was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | A unique identifier in the format REGION:GUID.
    identityId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IdentityDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logins', 'identityDescription_logins' - The provider names.
--
-- 'lastModifiedDate', 'identityDescription_lastModifiedDate' - Date on which the identity was last modified.
--
-- 'creationDate', 'identityDescription_creationDate' - Date on which the identity was created.
--
-- 'identityId', 'identityDescription_identityId' - A unique identifier in the format REGION:GUID.
newIdentityDescription ::
  IdentityDescription
newIdentityDescription =
  IdentityDescription'
    { logins = Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      identityId = Prelude.Nothing
    }

-- | The provider names.
identityDescription_logins :: Lens.Lens' IdentityDescription (Prelude.Maybe [Prelude.Text])
identityDescription_logins = Lens.lens (\IdentityDescription' {logins} -> logins) (\s@IdentityDescription' {} a -> s {logins = a} :: IdentityDescription) Prelude.. Lens.mapping Lens.coerced

-- | Date on which the identity was last modified.
identityDescription_lastModifiedDate :: Lens.Lens' IdentityDescription (Prelude.Maybe Prelude.UTCTime)
identityDescription_lastModifiedDate = Lens.lens (\IdentityDescription' {lastModifiedDate} -> lastModifiedDate) (\s@IdentityDescription' {} a -> s {lastModifiedDate = a} :: IdentityDescription) Prelude.. Lens.mapping Core._Time

-- | Date on which the identity was created.
identityDescription_creationDate :: Lens.Lens' IdentityDescription (Prelude.Maybe Prelude.UTCTime)
identityDescription_creationDate = Lens.lens (\IdentityDescription' {creationDate} -> creationDate) (\s@IdentityDescription' {} a -> s {creationDate = a} :: IdentityDescription) Prelude.. Lens.mapping Core._Time

-- | A unique identifier in the format REGION:GUID.
identityDescription_identityId :: Lens.Lens' IdentityDescription (Prelude.Maybe Prelude.Text)
identityDescription_identityId = Lens.lens (\IdentityDescription' {identityId} -> identityId) (\s@IdentityDescription' {} a -> s {identityId = a} :: IdentityDescription)

instance Core.FromJSON IdentityDescription where
  parseJSON =
    Core.withObject
      "IdentityDescription"
      ( \x ->
          IdentityDescription'
            Prelude.<$> (x Core..:? "Logins" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "LastModifiedDate")
            Prelude.<*> (x Core..:? "CreationDate")
            Prelude.<*> (x Core..:? "IdentityId")
      )

instance Prelude.Hashable IdentityDescription where
  hashWithSalt _salt IdentityDescription' {..} =
    _salt `Prelude.hashWithSalt` logins
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` identityId

instance Prelude.NFData IdentityDescription where
  rnf IdentityDescription' {..} =
    Prelude.rnf logins
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf identityId
