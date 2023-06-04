<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sfn_describe_activity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an activity

### Description

Describes an activity.

This operation is eventually consistent. The results are best effort and
may not reflect very recent updates and changes.

### Usage

    sfn_describe_activity(activityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sfn_describe_activity_:_activityArn">activityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the activity to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      activityArn = "string",
      name = "string",
      creationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_activity(
      activityArn = "string"
    )
