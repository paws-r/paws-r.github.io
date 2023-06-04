<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_indices</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Amazon Kendra indexes that you created

### Description

Lists the Amazon Kendra indexes that you created.

### Usage

    kendra_list_indices(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_indices_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
indexes.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_list_indices_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of indices to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IndexConfigurationSummaryItems = list(
        list(
          Name = "string",
          Id = "string",
          Edition = "DEVELOPER_EDITION"|"ENTERPRISE_EDITION",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Status = "CREATING"|"ACTIVE"|"DELETING"|"FAILED"|"UPDATING"|"SYSTEM_UPDATING"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_indices(
      NextToken = "string",
      MaxResults = 123
    )
