<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the groups specified by the query

### Description

Describes the groups specified by the query. Groups are defined by the
underlying Active Directory.

### Usage

    workdocs_describe_groups(AuthenticationToken, SearchQuery,
      OrganizationId, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_groups_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_groups_:_SearchQuery">SearchQuery</code></td>
<td><p>[required] A query to describe groups by group name.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_groups_:_OrganizationId">OrganizationId</code></td>
<td><p>The ID of the organization.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_groups_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_groups_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Groups = list(
        list(
          Id = "string",
          Name = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_groups(
      AuthenticationToken = "string",
      SearchQuery = "string",
      OrganizationId = "string",
      Marker = "string",
      Limit = 123
    )
