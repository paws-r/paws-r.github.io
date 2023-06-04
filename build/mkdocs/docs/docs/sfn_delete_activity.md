<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_delete_activity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an activity

### Description

Deletes an activity.

### Usage

    sfn_delete_activity(activityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sfn_delete_activity_:_activityArn">activityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the activity to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_activity(
      activityArn = "string"
    )
