<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_list_elasticsearch_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all supported Elasticsearch versions

### Description

List all supported Elasticsearch versions

### Usage

    elasticsearchservice_list_elasticsearch_versions(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_list_elasticsearch_versions_:_MaxResults">MaxResults</code></td>
<td><p>Set this value to limit the number of results returned. Value
provided must be greater than 10 else it wont be honored.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_list_elasticsearch_versions_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ElasticsearchVersions = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_elasticsearch_versions(
      MaxResults = 123,
      NextToken = "string"
    )
