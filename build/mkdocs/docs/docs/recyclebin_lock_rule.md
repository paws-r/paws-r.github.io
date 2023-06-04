<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_lock_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Locks a retention rule

### Description

Locks a retention rule. A locked retention rule can't be modified or
deleted.

### Usage

    recyclebin_lock_rule(Identifier, LockConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="recyclebin_lock_rule_:_Identifier">Identifier</code></td>
<td><p>[required] The unique ID of the retention rule.</p></td>
</tr>
<tr class="even">
<td><code
id="recyclebin_lock_rule_:_LockConfiguration">LockConfiguration</code></td>
<td><p>[required] Information about the retention rule lock
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Identifier = "string",
      Description = "string",
      ResourceType = "EBS_SNAPSHOT"|"EC2_IMAGE",
      RetentionPeriod = list(
        RetentionPeriodValue = 123,
        RetentionPeriodUnit = "DAYS"
      ),
      ResourceTags = list(
        list(
          ResourceTagKey = "string",
          ResourceTagValue = "string"
        )
      ),
      Status = "pending"|"available",
      LockConfiguration = list(
        UnlockDelay = list(
          UnlockDelayValue = 123,
          UnlockDelayUnit = "DAYS"
        )
      ),
      LockState = "locked"|"pending_unlock"|"unlocked"
    )

### Request syntax

    svc$lock_rule(
      Identifier = "string",
      LockConfiguration = list(
        UnlockDelay = list(
          UnlockDelayValue = 123,
          UnlockDelayUnit = "DAYS"
        )
      )
    )
