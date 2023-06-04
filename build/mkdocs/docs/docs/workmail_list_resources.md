<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns summaries of the organization's resources

### Description

Returns summaries of the organization's resources.

### Usage

    workmail_list_resources(OrganizationId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_resources_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
resources exist.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_list_resources_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Resources = list(
        list(
          Id = "string",
          Email = "string",
          Name = "string",
          Type = "ROOM"|"EQUIPMENT",
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

    svc$list_resources(
      OrganizationId = "string",
      NextToken = "string",
      MaxResults = 123
    )
