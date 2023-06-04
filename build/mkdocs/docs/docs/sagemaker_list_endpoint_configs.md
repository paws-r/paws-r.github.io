<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_endpoint_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists endpoint configurations

### Description

Lists endpoint configurations.

### Usage

    sagemaker_list_endpoint_configs(SortBy, SortOrder, NextToken,
      MaxResults, NameContains, CreationTimeBefore, CreationTimeAfter)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_endpoint_configs_:_SortBy">SortBy</code></td>
<td><p>The field to sort results by. The default is
<code>CreationTime</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoint_configs_:_SortOrder">SortOrder</code></td>
<td><p>The sort order for results. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoint_configs_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous <code>ListEndpointConfig</code>
request was truncated, the response includes a <code>NextToken</code>.
To retrieve the next set of endpoint configurations, use the token in
the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoint_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of training jobs to return in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoint_configs_:_NameContains">NameContains</code></td>
<td><p>A string in the endpoint configuration name. This filter returns
only endpoint configurations whose name contains the specified
string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_endpoint_configs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>A filter that returns only endpoint configurations created before
the specified time (timestamp).</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_endpoint_configs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>A filter that returns only endpoint configurations with a
creation time greater than or equal to the specified time
(timestamp).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointConfigs = list(
        list(
          EndpointConfigName = "string",
          EndpointConfigArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoint_configs(
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
