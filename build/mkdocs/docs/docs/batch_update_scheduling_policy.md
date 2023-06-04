<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_update_scheduling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a scheduling policy

### Description

Updates a scheduling policy.

### Usage

    batch_update_scheduling_policy(arn, fairsharePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_update_scheduling_policy_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the scheduling
policy to update.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_update_scheduling_policy_:_fairsharePolicy">fairsharePolicy</code></td>
<td><p>The fair share policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_scheduling_policy(
      arn = "string",
      fairsharePolicy = list(
        shareDecaySeconds = 123,
        computeReservation = 123,
        shareDistribution = list(
          list(
            shareIdentifier = "string",
            weightFactor = 123.0
          )
        )
      )
    )
