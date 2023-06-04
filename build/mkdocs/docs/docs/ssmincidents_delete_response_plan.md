<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_delete_response_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified response plan

### Description

Deletes the specified response plan. Deleting a response plan stops all
linked CloudWatch alarms and EventBridge events from creating an
incident with this response plan.

### Usage

    ssmincidents_delete_response_plan(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_delete_response_plan_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response
plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_response_plan(
      arn = "string"
    )
