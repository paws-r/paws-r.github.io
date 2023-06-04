<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_contexts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the contexts in your account and their properties

### Description

Lists the contexts in your account and their properties.

### Usage

    sagemaker_list_contexts(SourceUri, ContextType, CreatedAfter,
      CreatedBefore, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_list_contexts_:_SourceUri">SourceUri</code></td>
<td><p>A filter that returns only contexts with the specified source
URI.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_contexts_:_ContextType">ContextType</code></td>
<td><p>A filter that returns only contexts of the specified
type.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_contexts_:_CreatedAfter">CreatedAfter</code></td>
<td><p>A filter that returns only contexts created on or after the
specified time.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_contexts_:_CreatedBefore">CreatedBefore</code></td>
<td><p>A filter that returns only contexts created on or before the
specified time.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_contexts_:_SortBy">SortBy</code></td>
<td><p>The property used to sort results. The default value is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_contexts_:_SortOrder">SortOrder</code></td>
<td><p>The sort order. The default value is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_list_contexts_:_NextToken">NextToken</code></td>
<td><p>If the previous call to <code>list_contexts</code> didn't return
the full set of contexts, the call returns a token for getting the next
set of contexts.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_contexts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of contexts to return in the response. The
default value is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContextSummaries = list(
        list(
          ContextArn = "string",
          ContextName = "string",
          Source = list(
            SourceUri = "string",
            SourceType = "string",
            SourceId = "string"
          ),
          ContextType = "string",
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

    svc$list_contexts(
      SourceUri = "string",
      ContextType = "string",
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
