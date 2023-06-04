<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_create_label_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a group of labels

### Description

Creates a group of labels.

### Usage

    lookoutequipment_create_label_group(LabelGroupName, FaultCodes,
      ClientToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_group_:_LabelGroupName">LabelGroupName</code></td>
<td><p>[required] Names a group of labels.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_label_group_:_FaultCodes">FaultCodes</code></td>
<td><p>The acceptable fault codes (indicating the type of anomaly
associated with the label) that can be used with this label group.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_create_label_group_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request to create a label
group. If you do not set the client request token, Lookout for Equipment
generates one.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_create_label_group_:_Tags">Tags</code></td>
<td><p>Tags that provide metadata about the label group you are
creating.</p>
<p>Data in this field will be retained for service usage. Follow best
practices for the security of your data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelGroupName = "string",
      LabelGroupArn = "string"
    )

### Request syntax

    svc$create_label_group(
      LabelGroupName = "string",
      FaultCodes = list(
        "string"
      ),
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
