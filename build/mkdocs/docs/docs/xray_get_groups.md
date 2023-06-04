<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all active group details

### Description

Retrieves all active group details.

### Usage

    xray_get_groups(NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_groups_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          GroupName = "string",
          GroupARN = "string",
          FilterExpression = "string",
          InsightsConfiguration = list(
            InsightsEnabled = TRUE|FALSE,
            NotificationsEnabled = TRUE|FALSE
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_groups(
      NextToken = "string"
    )
