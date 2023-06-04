<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists models created with the CreateModel API

### Description

Lists models created with the `create_model` API.

### Usage

    sagemaker_list_models(SortBy, SortOrder, NextToken, MaxResults,
      NameContains, CreationTimeBefore, CreationTimeAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_models_:_SortBy">SortBy</code></td>
<td><p>Sorts the list of results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_models_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_models_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_models</code> request
was truncated, the response includes a <code>NextToken</code>. To
retrieve the next set of models, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_models_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of models to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_models_:_NameContains">NameContains</code></td>
<td><p>A string in the model name. This filter returns only models whose
name contains the specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_models_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only models created before the specified
time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_models_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only models with a creation time greater
than or equal to the specified time (timestamp).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Models = list(
        list(
          ModelName = "string",
          ModelArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_models(
      SortBy = "Name"|"CreationTime",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123,
      NameContains = "string",
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      )
    )
