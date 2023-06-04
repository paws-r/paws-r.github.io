<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name of the label

### Description

Returns the name of the label.

### Usage

    lookoutequipment_describe_label(LabelGroupName, LabelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_label_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] Returns the name of the group containing the
label.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_describe_label_:_LabelId">LabelId</code></td>
<td><p>[required] Returns the ID of the label.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelGroupName = "string",
      LabelGroupArn = "string",
      LabelId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      Rating = "ANOMALY"|"NO_ANOMALY"|"NEUTRAL",
      FaultCode = "string",
      Notes = "string",
      Equipment = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_label(
      LabelGroupName = "string",
      LabelId = "string"
    )
