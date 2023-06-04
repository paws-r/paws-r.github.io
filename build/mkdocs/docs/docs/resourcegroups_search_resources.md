<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>resourcegroups_search_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Amazon Web Services resource identifiers that matches the specified query

### Description

Returns a list of Amazon Web Services resource identifiers that matches
the specified query. The query uses the same format as a resource query
in a `create_group` or `update_group_query` operation.

**Minimum permissions**

To run this command, you must have the following permissions:

-   `resource-groups:SearchResources`

-   `cloudformation:DescribeStacks`

-   `cloudformation:ListStackResources`

-   `tag:GetResources`

### Usage

    resourcegroups_search_resources(ResourceQuery, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="resourcegroups_search_resources_:_ResourceQuery">ResourceQuery</code></td>
<td><p>[required] The search query, using the same formats that are
supported for resource group definition. For more information, see
<code>create_group</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="resourcegroups_search_resources_:_MaxResults">MaxResults</code></td>
<td><p>The total number of results that you want included on each page
of the response. If you do not include this parameter, it defaults to a
value that is specific to the operation. If additional items exist
beyond the maximum you specify, the <code>NextToken</code> response
element is present and has a value (is not null). Include that value as
the <code>NextToken</code> request parameter in the next call to the
operation to get the next part of the results. Note that the service
might return fewer results than the maximum even when there are more
results available. You should check <code>NextToken</code> after every
operation to ensure that you receive all of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="resourcegroups_search_resources_:_NextToken">NextToken</code></td>
<td><p>The parameter for receiving additional results if you receive a
<code>NextToken</code> response in a previous request. A
<code>NextToken</code> response indicates that more output is available.
Set this parameter to the value provided by a previous call's
<code>NextToken</code> response to indicate where the output should
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceIdentifiers = list(
        list(
          ResourceArn = "string",
          ResourceType = "string"
        )
      ),
      NextToken = "string",
      QueryErrors = list(
        list(
          ErrorCode = "CLOUDFORMATION_STACK_INACTIVE"|"CLOUDFORMATION_STACK_NOT_EXISTING"|"CLOUDFORMATION_STACK_UNASSUMABLE_ROLE",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$search_resources(
      ResourceQuery = list(
        Type = "TAG_FILTERS_1_0"|"CLOUDFORMATION_STACK_1_0",
        Query = "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
