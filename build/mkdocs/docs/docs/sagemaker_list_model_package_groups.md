<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_package_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the model groups in your Amazon Web Services account

### Description

Gets a list of the model groups in your Amazon Web Services account.

### Usage

    sagemaker_list_model_package_groups(CreationTimeAfter,
      CreationTimeBefore, MaxResults, NameContains, NextToken, SortBy,
      SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_package_groups_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only model groups created after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_package_groups_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only model groups created before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_package_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_package_groups_:_NameContains">NameContains</code></td>
<td><p>A string in the model group name. This filter returns only model
groups whose name contains the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_package_groups_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous
<code>list_model_package_groups</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
model groups, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_package_groups_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_package_groups_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageGroupSummaryList = list(
        list(
          ModelPackageGroupName = "string",
          ModelPackageGroupArn = "string",
          ModelPackageGroupDescription = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ModelPackageGroupStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting"|"DeleteFailed"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_model_package_groups(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      NextToken = "string",
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending"
    )
