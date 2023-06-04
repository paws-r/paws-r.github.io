<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves group resource details

### Description

Retrieves group resource details.

### Usage

    xray_get_group(GroupName, GroupARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_group_:_GroupName">GroupName</code></td>
<td><p>The case-sensitive name of the group.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_group_:_GroupARN">GroupARN</code></td>
<td><p>The ARN of the group that was generated on creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        GroupName = "string",
        GroupARN = "string",
        FilterExpression = "string",
        InsightsConfiguration = list(
          InsightsEnabled = TRUE|FALSE,
          NotificationsEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$get_group(
      GroupName = "string",
      GroupARN = "string"
    )
