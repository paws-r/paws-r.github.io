<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_delete_incident_record</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an incident record from Incident Manager

### Description

Delete an incident record from Incident Manager.

### Usage

    ssmincidents_delete_incident_record(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmincidents_delete_incident_record_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the incident record
you are deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_incident_record(
      arn = "string"
    )
