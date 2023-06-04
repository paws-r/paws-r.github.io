<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a paginated call to list the aliases associated with a given entity

### Description

Creates a paginated call to list the aliases associated with a given
entity.

### Usage

    workmail_list_aliases(OrganizationId, EntityId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_aliases_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
entity exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_list_aliases_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier for the entity for which to list the
aliases.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_list_aliases_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_list_aliases_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Aliases = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_aliases(
      OrganizationId = "string",
      EntityId = "string",
      NextToken = "string",
      MaxResults = 123
    )
