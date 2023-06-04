<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_lineage_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A list of lineage groups shared with your Amazon Web Services account

### Description

A list of lineage groups shared with your Amazon Web Services account.
For more information, see [Cross-Account Lineage
Tracking](https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html)
in the *Amazon SageMaker Developer Guide*.

### Usage

    sagemaker_list_lineage_groups(CreatedAfter, CreatedBefore, SortBy,
      SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_lineage_groups_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A timestamp to filter against lineage groups created after a
certain point in time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_lineage_groups_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A timestamp to filter against lineage groups created before a
certain point in time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_lineage_groups_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_lineage_groups_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Ascending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_lineage_groups_:_NextToken">NextToken</code></td>
<td><p>If the response is truncated, SageMaker returns this token. To
retrieve the next set of algorithms, use it in the subsequent
request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_lineage_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of endpoints to return in the response. This
value defaults to 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LineageGroupSummaries = list(
        list(
          LineageGroupArn = "string",
          LineageGroupName = "string",
          DisplayName = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_lineage_groups(
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
