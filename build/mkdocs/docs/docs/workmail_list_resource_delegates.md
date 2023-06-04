<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_resource_delegates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the delegates associated with a resource

### Description

Lists the delegates associated with a resource. Users and groups can be
resource delegates and answer requests on behalf of the resource.

### Usage

    workmail_list_resource_delegates(OrganizationId, ResourceId, NextToken,
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
id="workmail_list_resource_delegates_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization that contains the
resource for which delegates are listed.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_resource_delegates_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier for the resource whose delegates are
listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_resource_delegates_:_NextToken">NextToken</code></td>
<td><p>The token used to paginate through the delegates associated with
a resource.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_resource_delegates_:_MaxResults">MaxResults</code></td>
<td><p>The number of maximum results in a page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Delegates = list(
        list(
          Id = "string",
          Type = "GROUP"|"USER"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_delegates(
      OrganizationId = "string",
      ResourceId = "string",
      NextToken = "string",
      MaxResults = 123
    )
