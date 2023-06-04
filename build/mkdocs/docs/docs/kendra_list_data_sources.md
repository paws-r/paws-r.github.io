<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_data_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the data source connectors that you have created

### Description

Lists the data source connectors that you have created.

### Usage

    kendra_list_data_sources(IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_data_sources_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used with one or more data
source connectors.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_data_sources_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
data source connectors.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_data_sources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of data source connectors to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SummaryItems = list(
        list(
          Name = "string",
          Id = "string",
          Type = "S3"|"SHAREPOINT"|"DATABASE"|"SALESFORCE"|"ONEDRIVE"|"SERVICENOW"|"CUSTOM"|"CONFLUENCE"|"GOOGLEDRIVE"|"WEBCRAWLER"|"WORKDOCS"|"FSX"|"SLACK"|"BOX"|"QUIP"|"JIRA"|"GITHUB"|"ALFRESCO"|"TEMPLATE",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATING"|"DELETING"|"FAILED"|"UPDATING"|"ACTIVE",
          LanguageCode = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_sources(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
