<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_feature_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List FeatureGroups based on given filter and order

### Description

List `FeatureGroup`s based on given filter and order.

### Usage

    sagemaker_list_feature_groups(NameContains, FeatureGroupStatusEquals,
      OfflineStoreStatusEquals, CreationTimeAfter, CreationTimeBefore,
      SortOrder, SortBy, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_feature_groups_:_NameContains">NameContains</code></td>
<td><p>A string that partially matches one or more
<code>FeatureGroup</code>s names. Filters <code>FeatureGroup</code>s by
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_feature_groups_:_FeatureGroupStatusEquals">FeatureGroupStatusEquals</code></td>
<td><p>A <code>FeatureGroup</code> status. Filters by
<code>FeatureGroup</code> status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_feature_groups_:_OfflineStoreStatusEquals">OfflineStoreStatusEquals</code></td>
<td><p>An <code>OfflineStore</code> status. Filters by
<code>OfflineStore</code> status.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_feature_groups_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Use this parameter to search for <code>FeatureGroups</code>s
created after a specific date and time.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_feature_groups_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Use this parameter to search for <code>FeatureGroups</code>s
created before a specific date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_feature_groups_:_SortOrder">SortOrder</code></td>
<td><p>The order in which feature groups are listed.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_feature_groups_:_SortBy">SortBy</code></td>
<td><p>The value on which the feature group list is sorted.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_feature_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned by
<code>list_feature_groups</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_feature_groups_:_NextToken">NextToken</code></td>
<td><p>A token to resume pagination of <code>list_feature_groups</code>
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeatureGroupSummaries = list(
        list(
          FeatureGroupName = "string",
          FeatureGroupArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FeatureGroupStatus = "Creating"|"Created"|"CreateFailed"|"Deleting"|"DeleteFailed",
          OfflineStoreStatus = list(
            Status = "Active"|"Blocked"|"Disabled",
            BlockedReason = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_feature_groups(
      NameContains = "string",
      FeatureGroupStatusEquals = "Creating"|"Created"|"CreateFailed"|"Deleting"|"DeleteFailed",
      OfflineStoreStatusEquals = "Active"|"Blocked"|"Disabled",
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortOrder = "Ascending"|"Descending",
      SortBy = "Name"|"FeatureGroupStatus"|"OfflineStoreStatus"|"CreationTime",
      MaxResults = 123,
      NextToken = "string"
    )
