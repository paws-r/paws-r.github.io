<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_keywords_for_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of keywords that are pre-mapped to the specified control data source

### Description

Returns a list of keywords that are pre-mapped to the specified control
data source.

### Usage

    auditmanager_list_keywords_for_data_source(source, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_list_keywords_for_data_source_:_source">source</code></td>
<td><p>[required] The control mapping data source that the keywords
apply to.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_keywords_for_data_source_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_keywords_for_data_source_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keywords = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_keywords_for_data_source(
      source = "AWS_Cloudtrail"|"AWS_Config"|"AWS_Security_Hub"|"AWS_API_Call"|"MANUAL",
      nextToken = "string",
      maxResults = 123
    )
