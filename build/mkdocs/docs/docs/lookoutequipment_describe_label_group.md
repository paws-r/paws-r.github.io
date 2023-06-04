<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_label_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the label group

### Description

Returns information about the label group.

### Usage

    lookoutequipment_describe_label_group(LabelGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_label_group_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] Returns the name of the label group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelGroupName = "string",
      LabelGroupArn = "string",
      FaultCodes = list(
        "string"
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_label_group(
      LabelGroupName = "string"
    )
