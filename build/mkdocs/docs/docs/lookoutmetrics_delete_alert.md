<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_delete_alert</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an alert

### Description

Deletes an alert.

### Usage

    lookoutmetrics_delete_alert(AlertArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_delete_alert_:_AlertArn">AlertArn</code></td>
<td><p>[required] The ARN of the alert to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_alert(
      AlertArn = "string"
    )
