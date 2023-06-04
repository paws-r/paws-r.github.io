<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_unlock_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unlocks a retention rule

### Description

Unlocks a retention rule. After a retention rule is unlocked, it can be
modified or deleted only after the unlock delay period expires.

### Usage

    recyclebin_unlock_rule(Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_unlock_rule_:_Identifier">Identifier</code></td>
<td><p>[required] The unique ID of the retention rule.</p></td>
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
      LockState = "locked"|"pending_unlock"|"unlocked",
      LockEndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$unlock_rule(
      Identifier = "string"
    )
