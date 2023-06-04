<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the data available for the group

### Description

Returns the data available for the group.

### Usage

    workmail_describe_group(OrganizationId, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_group_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
group exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_describe_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for the group to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupId = "string",
      Name = "string",
      Email = "string",
      State = "ENABLED"|"DISABLED"|"DELETED",
      EnabledDate = as.POSIXct(
        "2015-01-01"
      ),
      DisabledDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_group(
      OrganizationId = "string",
      GroupId = "string"
    )
