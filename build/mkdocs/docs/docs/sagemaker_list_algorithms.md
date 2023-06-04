<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_algorithms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the machine learning algorithms that have been created

### Description

Lists the machine learning algorithms that have been created.

### Usage

    sagemaker_list_algorithms(CreationTimeAfter, CreationTimeBefore,
      MaxResults, NameContains, NextToken, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_algorithms_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only algorithms created after the specified
time (timestamp).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_algorithms_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only algorithms created before the
specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_algorithms_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of algorithms to return in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_algorithms_:_NameContains">NameContains</code></td>
<td><p>A string in the algorithm name. This filter returns only
algorithms whose name contains the specified string.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_algorithms_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous <code>list_algorithms</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of algorithms, use the token in the next
request.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_list_algorithms_:_SortBy">SortBy</code></td>
<td><p>The parameter by which to sort the results. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_algorithms_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for the results. The default is
<code>Ascending</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlgorithmSummaryList = list(
        list(
          AlgorithmName = "string",
          AlgorithmArn = "string",
          AlgorithmDescription = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          AlgorithmStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_algorithms(
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
