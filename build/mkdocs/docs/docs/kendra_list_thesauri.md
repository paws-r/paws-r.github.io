<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_thesauri</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the thesauri for an index

### Description

Lists the thesauri for an index.

### Usage

    kendra_list_thesauri(IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_thesauri_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index with one or more
thesauri.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_list_thesauri_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
thesauri (<code>ThesaurusSummaryItems</code>).</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_list_thesauri_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of thesauri to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      ThesaurusSummaryItems = list(
        list(
          Id = "string",
          Name = "string",
          Status = "CREATING"|"ACTIVE"|"DELETING"|"UPDATING"|"ACTIVE_BUT_UPDATE_FAILED"|"FAILED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_thesauri(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
