<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_cards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List existing model cards

### Description

List existing model cards.

### Usage

    sagemaker_list_model_cards(CreationTimeAfter, CreationTimeBefore,
      MaxResults, NameContains, ModelCardStatus, NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_cards_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list model cards that were created after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_cards_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list model cards that were created before the time
specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_cards_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model cards to list.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_cards_:_NameContains">NameContains</code></td>
<td><p>Only list model cards with names that contain the specified
string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_cards_:_ModelCardStatus">ModelCardStatus</code></td>
<td><p>Only list model cards with the specified approval
status.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_cards_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_model_cards</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of model cards, use the token in the next
request.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_model_cards_:_SortBy">SortBy</code></td>
<td><p>Sort model cards by either name or creation time. Sorts by
creation time by default.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_cards_:_SortOrder">SortOrder</code></td>
<td><p>Sort model cards by ascending or descending order.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardSummaries = list(
        list(
          ModelCardName = "string",
          ModelCardArn = "string",
          ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
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

    svc$list_model_cards(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NameContains = "string",
      ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
      NextToken = "string",
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending"
    )
