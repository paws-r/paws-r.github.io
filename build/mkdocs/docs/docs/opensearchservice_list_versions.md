<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch Service supports

### Description

Lists all versions of OpenSearch and Elasticsearch that Amazon
OpenSearch Service supports.

### Usage

    opensearchservice_list_versions(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_list_versions_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_list_versions_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>list_versions</code> operation returns a
<code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent <code>list_versions</code>
operations, which returns results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Versions = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_versions(
      MaxResults = 123,
      NextToken = "string"
    )
