<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a group resource

### Description

Updates a group resource.

### Usage

    xray_update_group(GroupName, GroupARN, FilterExpression,
      InsightsConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_update_group_:_GroupName">GroupName</code></td>
<td><p>The case-sensitive name of the group.</p></td>
</tr>
<tr class="even">
<td><code id="xray_update_group_:_GroupARN">GroupARN</code></td>
<td><p>The ARN that was generated upon creation.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_update_group_:_FilterExpression">FilterExpression</code></td>
<td><p>The updated filter expression defining criteria by which to group
traces.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_update_group_:_InsightsConfiguration">InsightsConfiguration</code></td>
<td><p>The structure containing configurations related to insights.</p>
<ul>
<li><p>The InsightsEnabled boolean can be set to true to enable insights
for the group or false to disable insights for the group.</p></li>
<li><p>The NotificationsEnabled boolean can be set to true to enable
insights notifications for the group. Notifications can only be enabled
on a group with InsightsEnabled set to true.</p></li>
</ul></td>
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

    svc$update_group(
      GroupName = "string",
      GroupARN = "string",
      FilterExpression = "string",
      InsightsConfiguration = list(
        InsightsEnabled = TRUE|FALSE,
        NotificationsEnabled = TRUE|FALSE
      )
    )
