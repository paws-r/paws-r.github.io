<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_scheduled_action</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a scheduled action

### Description

Deletes a scheduled action.

### Usage

    redshift_delete_scheduled_action(ScheduledActionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_scheduled_action_:_ScheduledActionName">ScheduledActionName</code></td>
<td><p>[required] The name of the scheduled action to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_scheduled_action(
      ScheduledActionName = "string"
    )
