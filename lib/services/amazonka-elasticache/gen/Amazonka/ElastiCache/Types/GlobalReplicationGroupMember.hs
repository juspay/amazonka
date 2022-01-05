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
-- Module      : Amazonka.ElastiCache.Types.GlobalReplicationGroupMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElastiCache.Types.GlobalReplicationGroupMember where

import qualified Amazonka.Core as Core
import Amazonka.ElastiCache.Types.AutomaticFailoverStatus
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A member of a Global datastore. It contains the Replication Group Id,
-- the Amazon region and the role of the replication group.
--
-- /See:/ 'newGlobalReplicationGroupMember' smart constructor.
data GlobalReplicationGroupMember = GlobalReplicationGroupMember'
  { -- | The status of the membership of the replication group.
    status :: Prelude.Maybe Prelude.Text,
    -- | The Amazon region of the Global datastore member.
    replicationGroupRegion :: Prelude.Maybe Prelude.Text,
    -- | Indicates the role of the replication group, primary or secondary.
    role' :: Prelude.Maybe Prelude.Text,
    -- | The replication group id of the Global datastore member.
    replicationGroupId :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether automatic failover is enabled for the replication
    -- group.
    automaticFailover :: Prelude.Maybe AutomaticFailoverStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GlobalReplicationGroupMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'globalReplicationGroupMember_status' - The status of the membership of the replication group.
--
-- 'replicationGroupRegion', 'globalReplicationGroupMember_replicationGroupRegion' - The Amazon region of the Global datastore member.
--
-- 'role'', 'globalReplicationGroupMember_role' - Indicates the role of the replication group, primary or secondary.
--
-- 'replicationGroupId', 'globalReplicationGroupMember_replicationGroupId' - The replication group id of the Global datastore member.
--
-- 'automaticFailover', 'globalReplicationGroupMember_automaticFailover' - Indicates whether automatic failover is enabled for the replication
-- group.
newGlobalReplicationGroupMember ::
  GlobalReplicationGroupMember
newGlobalReplicationGroupMember =
  GlobalReplicationGroupMember'
    { status =
        Prelude.Nothing,
      replicationGroupRegion = Prelude.Nothing,
      role' = Prelude.Nothing,
      replicationGroupId = Prelude.Nothing,
      automaticFailover = Prelude.Nothing
    }

-- | The status of the membership of the replication group.
globalReplicationGroupMember_status :: Lens.Lens' GlobalReplicationGroupMember (Prelude.Maybe Prelude.Text)
globalReplicationGroupMember_status = Lens.lens (\GlobalReplicationGroupMember' {status} -> status) (\s@GlobalReplicationGroupMember' {} a -> s {status = a} :: GlobalReplicationGroupMember)

-- | The Amazon region of the Global datastore member.
globalReplicationGroupMember_replicationGroupRegion :: Lens.Lens' GlobalReplicationGroupMember (Prelude.Maybe Prelude.Text)
globalReplicationGroupMember_replicationGroupRegion = Lens.lens (\GlobalReplicationGroupMember' {replicationGroupRegion} -> replicationGroupRegion) (\s@GlobalReplicationGroupMember' {} a -> s {replicationGroupRegion = a} :: GlobalReplicationGroupMember)

-- | Indicates the role of the replication group, primary or secondary.
globalReplicationGroupMember_role :: Lens.Lens' GlobalReplicationGroupMember (Prelude.Maybe Prelude.Text)
globalReplicationGroupMember_role = Lens.lens (\GlobalReplicationGroupMember' {role'} -> role') (\s@GlobalReplicationGroupMember' {} a -> s {role' = a} :: GlobalReplicationGroupMember)

-- | The replication group id of the Global datastore member.
globalReplicationGroupMember_replicationGroupId :: Lens.Lens' GlobalReplicationGroupMember (Prelude.Maybe Prelude.Text)
globalReplicationGroupMember_replicationGroupId = Lens.lens (\GlobalReplicationGroupMember' {replicationGroupId} -> replicationGroupId) (\s@GlobalReplicationGroupMember' {} a -> s {replicationGroupId = a} :: GlobalReplicationGroupMember)

-- | Indicates whether automatic failover is enabled for the replication
-- group.
globalReplicationGroupMember_automaticFailover :: Lens.Lens' GlobalReplicationGroupMember (Prelude.Maybe AutomaticFailoverStatus)
globalReplicationGroupMember_automaticFailover = Lens.lens (\GlobalReplicationGroupMember' {automaticFailover} -> automaticFailover) (\s@GlobalReplicationGroupMember' {} a -> s {automaticFailover = a} :: GlobalReplicationGroupMember)

instance Core.FromXML GlobalReplicationGroupMember where
  parseXML x =
    GlobalReplicationGroupMember'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "ReplicationGroupRegion")
      Prelude.<*> (x Core..@? "Role")
      Prelude.<*> (x Core..@? "ReplicationGroupId")
      Prelude.<*> (x Core..@? "AutomaticFailover")

instance
  Prelude.Hashable
    GlobalReplicationGroupMember
  where
  hashWithSalt _salt GlobalReplicationGroupMember' {..} =
    _salt `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` replicationGroupRegion
      `Prelude.hashWithSalt` role'
      `Prelude.hashWithSalt` replicationGroupId
      `Prelude.hashWithSalt` automaticFailover

instance Prelude.NFData GlobalReplicationGroupMember where
  rnf GlobalReplicationGroupMember' {..} =
    Prelude.rnf status
      `Prelude.seq` Prelude.rnf replicationGroupRegion
      `Prelude.seq` Prelude.rnf role'
      `Prelude.seq` Prelude.rnf replicationGroupId
      `Prelude.seq` Prelude.rnf automaticFailover
