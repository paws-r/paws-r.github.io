<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_list_label_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the label groups

### Description

Returns a list of the label groups.

### Usage

    lookoutequipment_list_label_groups(LabelGroupNameBeginsWith, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_list_label_groups_:_LabelGroupNameBeginsWith">LabelGroupNameBeginsWith</code></td>
<td><p>The beginning of the name of the label groups to be
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutequipment_list_label_groups_:_NextToken">NextToken</code></td>
<td><p>An opaque pagination token indicating where to continue the
listing of label groups.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutequipment_list_label_groups_:_MaxResults">MaxResults</code></td>
<td><p>Specifies the maximum number of label groups to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      LabelGroupSummaries = list(
        list(
          LabelGroupName = "string",
          LabelGroupArn = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_label_groups(
      LabelGroupNameBeginsWith = "string",
      NextToken = "string",
      MaxResults = 123
    )
