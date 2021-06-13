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
-- Module      : Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SWF.Types.ActivityType
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause

-- | Provides the details of the @ScheduleActivityTaskFailed@ event.
--
-- /See:/ 'newScheduleActivityTaskFailedEventAttributes' smart constructor.
data ScheduleActivityTaskFailedEventAttributes = ScheduleActivityTaskFailedEventAttributes'
  { -- | The activity type provided in the @ScheduleActivityTask@ decision that
    -- failed.
    activityType :: ActivityType,
    -- | The activityId provided in the @ScheduleActivityTask@ decision that
    -- failed.
    activityId :: Prelude.Text,
    -- | The cause of the failure. This information is generated by the system
    -- and can be useful for diagnostic purposes.
    --
    -- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
    -- because it lacked sufficient permissions. For details and example IAM
    -- policies, see
    -- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
    -- in the /Amazon SWF Developer Guide/.
    cause :: ScheduleActivityTaskFailedCause,
    -- | The ID of the @DecisionTaskCompleted@ event corresponding to the
    -- decision that resulted in the scheduling of this activity task. This
    -- information can be useful for diagnosing problems by tracing back the
    -- chain of events leading up to this event.
    decisionTaskCompletedEventId :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScheduleActivityTaskFailedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activityType', 'scheduleActivityTaskFailedEventAttributes_activityType' - The activity type provided in the @ScheduleActivityTask@ decision that
-- failed.
--
-- 'activityId', 'scheduleActivityTaskFailedEventAttributes_activityId' - The activityId provided in the @ScheduleActivityTask@ decision that
-- failed.
--
-- 'cause', 'scheduleActivityTaskFailedEventAttributes_cause' - The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
--
-- 'decisionTaskCompletedEventId', 'scheduleActivityTaskFailedEventAttributes_decisionTaskCompletedEventId' - The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision that resulted in the scheduling of this activity task. This
-- information can be useful for diagnosing problems by tracing back the
-- chain of events leading up to this event.
newScheduleActivityTaskFailedEventAttributes ::
  -- | 'activityType'
  ActivityType ->
  -- | 'activityId'
  Prelude.Text ->
  -- | 'cause'
  ScheduleActivityTaskFailedCause ->
  -- | 'decisionTaskCompletedEventId'
  Prelude.Integer ->
  ScheduleActivityTaskFailedEventAttributes
newScheduleActivityTaskFailedEventAttributes
  pActivityType_
  pActivityId_
  pCause_
  pDecisionTaskCompletedEventId_ =
    ScheduleActivityTaskFailedEventAttributes'
      { activityType =
          pActivityType_,
        activityId = pActivityId_,
        cause = pCause_,
        decisionTaskCompletedEventId =
          pDecisionTaskCompletedEventId_
      }

-- | The activity type provided in the @ScheduleActivityTask@ decision that
-- failed.
scheduleActivityTaskFailedEventAttributes_activityType :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes ActivityType
scheduleActivityTaskFailedEventAttributes_activityType = Lens.lens (\ScheduleActivityTaskFailedEventAttributes' {activityType} -> activityType) (\s@ScheduleActivityTaskFailedEventAttributes' {} a -> s {activityType = a} :: ScheduleActivityTaskFailedEventAttributes)

-- | The activityId provided in the @ScheduleActivityTask@ decision that
-- failed.
scheduleActivityTaskFailedEventAttributes_activityId :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Prelude.Text
scheduleActivityTaskFailedEventAttributes_activityId = Lens.lens (\ScheduleActivityTaskFailedEventAttributes' {activityId} -> activityId) (\s@ScheduleActivityTaskFailedEventAttributes' {} a -> s {activityId = a} :: ScheduleActivityTaskFailedEventAttributes)

-- | The cause of the failure. This information is generated by the system
-- and can be useful for diagnostic purposes.
--
-- If @cause@ is set to @OPERATION_NOT_PERMITTED@, the decision failed
-- because it lacked sufficient permissions. For details and example IAM
-- policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
scheduleActivityTaskFailedEventAttributes_cause :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes ScheduleActivityTaskFailedCause
scheduleActivityTaskFailedEventAttributes_cause = Lens.lens (\ScheduleActivityTaskFailedEventAttributes' {cause} -> cause) (\s@ScheduleActivityTaskFailedEventAttributes' {} a -> s {cause = a} :: ScheduleActivityTaskFailedEventAttributes)

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the
-- decision that resulted in the scheduling of this activity task. This
-- information can be useful for diagnosing problems by tracing back the
-- chain of events leading up to this event.
scheduleActivityTaskFailedEventAttributes_decisionTaskCompletedEventId :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Prelude.Integer
scheduleActivityTaskFailedEventAttributes_decisionTaskCompletedEventId = Lens.lens (\ScheduleActivityTaskFailedEventAttributes' {decisionTaskCompletedEventId} -> decisionTaskCompletedEventId) (\s@ScheduleActivityTaskFailedEventAttributes' {} a -> s {decisionTaskCompletedEventId = a} :: ScheduleActivityTaskFailedEventAttributes)

instance
  Core.FromJSON
    ScheduleActivityTaskFailedEventAttributes
  where
  parseJSON =
    Core.withObject
      "ScheduleActivityTaskFailedEventAttributes"
      ( \x ->
          ScheduleActivityTaskFailedEventAttributes'
            Prelude.<$> (x Core..: "activityType")
              Prelude.<*> (x Core..: "activityId")
              Prelude.<*> (x Core..: "cause")
              Prelude.<*> (x Core..: "decisionTaskCompletedEventId")
      )

instance
  Prelude.Hashable
    ScheduleActivityTaskFailedEventAttributes

instance
  Prelude.NFData
    ScheduleActivityTaskFailedEventAttributes
