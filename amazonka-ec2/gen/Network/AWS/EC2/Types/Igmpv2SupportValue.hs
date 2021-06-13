{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Igmpv2SupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Igmpv2SupportValue
  ( Igmpv2SupportValue
      ( ..,
        Igmpv2SupportValue_Disable,
        Igmpv2SupportValue_Enable
      ),
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Igmpv2SupportValue = Igmpv2SupportValue'
  { fromIgmpv2SupportValue ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern Igmpv2SupportValue_Disable :: Igmpv2SupportValue
pattern Igmpv2SupportValue_Disable = Igmpv2SupportValue' "disable"

pattern Igmpv2SupportValue_Enable :: Igmpv2SupportValue
pattern Igmpv2SupportValue_Enable = Igmpv2SupportValue' "enable"

{-# COMPLETE
  Igmpv2SupportValue_Disable,
  Igmpv2SupportValue_Enable,
  Igmpv2SupportValue'
  #-}
