<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_card_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List existing versions of an Amazon SageMaker Model Card

### Description

List existing versions of an Amazon SageMaker Model Card.

### Usage

    sagemaker_list_model_card_versions(CreationTimeAfter,
      CreationTimeBefore, MaxResults, ModelCardName, ModelCardStatus,
      NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_versions_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list model card versions that were created after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_versions_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list model card versions that were created before the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model card versions to list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_versions_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] List model card versions for the model card with the
specified name.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_versions_:_ModelCardStatus">ModelCardStatus</code></td>
<td><p>Only list model card versions with the specified approval
status.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_versions_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous
<code>list_model_card_versions</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
model card versions, use the token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_versions_:_SortBy">SortBy</code></td>
<td><p>Sort listed model card versions by version. Sorts by version by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_versions_:_SortOrder">SortOrder</code></td>
<td><p>Sort model card versions by ascending or descending
order.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardVersionSummaryList = list(
        list(
          ModelCardName = "string",
          ModelCardArn = "string",
          ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
          ModelCardVersion = 123,
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

    svc$list_model_card_versions(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      ModelCardName = "string",
      ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
      NextToken = "string",
      SortBy = "Version",
      SortOrder = "Ascending"|"Descending"
    )
