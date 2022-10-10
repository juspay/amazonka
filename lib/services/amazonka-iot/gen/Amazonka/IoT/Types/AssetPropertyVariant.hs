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
-- Module      : Amazonka.IoT.Types.AssetPropertyVariant
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.AssetPropertyVariant where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Contains an asset property value (of a single type).
--
-- /See:/ 'newAssetPropertyVariant' smart constructor.
data AssetPropertyVariant = AssetPropertyVariant'
  { -- | Optional. A string that contains the integer value of the value entry.
    -- Accepts substitution templates.
    integerValue :: Prelude.Maybe Prelude.Text,
    -- | Optional. A string that contains the double value of the value entry.
    -- Accepts substitution templates.
    doubleValue :: Prelude.Maybe Prelude.Text,
    -- | Optional. A string that contains the boolean value (@true@ or @false@)
    -- of the value entry. Accepts substitution templates.
    booleanValue :: Prelude.Maybe Prelude.Text,
    -- | Optional. The string value of the value entry. Accepts substitution
    -- templates.
    stringValue :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssetPropertyVariant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'integerValue', 'assetPropertyVariant_integerValue' - Optional. A string that contains the integer value of the value entry.
-- Accepts substitution templates.
--
-- 'doubleValue', 'assetPropertyVariant_doubleValue' - Optional. A string that contains the double value of the value entry.
-- Accepts substitution templates.
--
-- 'booleanValue', 'assetPropertyVariant_booleanValue' - Optional. A string that contains the boolean value (@true@ or @false@)
-- of the value entry. Accepts substitution templates.
--
-- 'stringValue', 'assetPropertyVariant_stringValue' - Optional. The string value of the value entry. Accepts substitution
-- templates.
newAssetPropertyVariant ::
  AssetPropertyVariant
newAssetPropertyVariant =
  AssetPropertyVariant'
    { integerValue =
        Prelude.Nothing,
      doubleValue = Prelude.Nothing,
      booleanValue = Prelude.Nothing,
      stringValue = Prelude.Nothing
    }

-- | Optional. A string that contains the integer value of the value entry.
-- Accepts substitution templates.
assetPropertyVariant_integerValue :: Lens.Lens' AssetPropertyVariant (Prelude.Maybe Prelude.Text)
assetPropertyVariant_integerValue = Lens.lens (\AssetPropertyVariant' {integerValue} -> integerValue) (\s@AssetPropertyVariant' {} a -> s {integerValue = a} :: AssetPropertyVariant)

-- | Optional. A string that contains the double value of the value entry.
-- Accepts substitution templates.
assetPropertyVariant_doubleValue :: Lens.Lens' AssetPropertyVariant (Prelude.Maybe Prelude.Text)
assetPropertyVariant_doubleValue = Lens.lens (\AssetPropertyVariant' {doubleValue} -> doubleValue) (\s@AssetPropertyVariant' {} a -> s {doubleValue = a} :: AssetPropertyVariant)

-- | Optional. A string that contains the boolean value (@true@ or @false@)
-- of the value entry. Accepts substitution templates.
assetPropertyVariant_booleanValue :: Lens.Lens' AssetPropertyVariant (Prelude.Maybe Prelude.Text)
assetPropertyVariant_booleanValue = Lens.lens (\AssetPropertyVariant' {booleanValue} -> booleanValue) (\s@AssetPropertyVariant' {} a -> s {booleanValue = a} :: AssetPropertyVariant)

-- | Optional. The string value of the value entry. Accepts substitution
-- templates.
assetPropertyVariant_stringValue :: Lens.Lens' AssetPropertyVariant (Prelude.Maybe Prelude.Text)
assetPropertyVariant_stringValue = Lens.lens (\AssetPropertyVariant' {stringValue} -> stringValue) (\s@AssetPropertyVariant' {} a -> s {stringValue = a} :: AssetPropertyVariant)

instance Core.FromJSON AssetPropertyVariant where
  parseJSON =
    Core.withObject
      "AssetPropertyVariant"
      ( \x ->
          AssetPropertyVariant'
            Prelude.<$> (x Core..:? "integerValue")
            Prelude.<*> (x Core..:? "doubleValue")
            Prelude.<*> (x Core..:? "booleanValue")
            Prelude.<*> (x Core..:? "stringValue")
      )

instance Prelude.Hashable AssetPropertyVariant where
  hashWithSalt _salt AssetPropertyVariant' {..} =
    _salt `Prelude.hashWithSalt` integerValue
      `Prelude.hashWithSalt` doubleValue
      `Prelude.hashWithSalt` booleanValue
      `Prelude.hashWithSalt` stringValue

instance Prelude.NFData AssetPropertyVariant where
  rnf AssetPropertyVariant' {..} =
    Prelude.rnf integerValue
      `Prelude.seq` Prelude.rnf doubleValue
      `Prelude.seq` Prelude.rnf booleanValue
      `Prelude.seq` Prelude.rnf stringValue

instance Core.ToJSON AssetPropertyVariant where
  toJSON AssetPropertyVariant' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("integerValue" Core..=) Prelude.<$> integerValue,
            ("doubleValue" Core..=) Prelude.<$> doubleValue,
            ("booleanValue" Core..=) Prelude.<$> booleanValue,
            ("stringValue" Core..=) Prelude.<$> stringValue
          ]
      )
