<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the SearchGroups operation to search groups in a specified Amazon QuickSight namespace using the supplied filters

### Description

Use the `search_groups` operation to search groups in a specified Amazon
QuickSight namespace using the supplied filters.

### Usage

    quicksight_search_groups(AwsAccountId, NextToken, MaxResults, Namespace,
      Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_search_groups_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_groups_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return from this
request.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_groups_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that you want to search.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_search_groups_:_Filters">Filters</code></td>
<td><p>[required] The structure for the search filters that you want to
apply to your search.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupList = list(
        list(
          Arn = "string",
          GroupName = "string",
          Description = "string",
          PrincipalId = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$search_groups(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123,
      Namespace = "string",
      Filters = list(
        list(
          Operator = "StartsWith",
          Name = "GROUP_NAME",
          Value = "string"
        )
      )
    )
