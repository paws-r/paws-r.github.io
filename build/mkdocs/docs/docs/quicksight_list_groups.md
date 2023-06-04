<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all user groups in Amazon QuickSight

### Description

Lists all user groups in Amazon QuickSight.

### Usage

    quicksight_list_groups(AwsAccountId, NextToken, MaxResults, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_groups_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_groups_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_groups_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that you want a list of groups
from.</p></td>
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

    svc$list_groups(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123,
      Namespace = "string"
    )
