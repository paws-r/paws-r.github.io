<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_group_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an overview of the members of a group

### Description

Returns an overview of the members of a group. Users and groups can be
members of a group.

### Usage

    workmail_list_group_members(OrganizationId, GroupId, NextToken,
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
id="workmail_list_group_members_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
group exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_list_group_members_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for the group to which the members
(users or groups) are associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_group_members_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_group_members_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Members = list(
        list(
          Id = "string",
          Name = "string",
          Type = "GROUP"|"USER",
          State = "ENABLED"|"DISABLED"|"DELETED",
          EnabledDate = as.POSIXct(
            "2015-01-01"
          ),
          DisabledDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_group_members(
      OrganizationId = "string",
      GroupId = "string",
      NextToken = "string",
      MaxResults = 123
    )
