<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_faqs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of FAQ lists associated with an index

### Description

Gets a list of FAQ lists associated with an index.

### Usage

    kendra_list_faqs(IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_faqs_:_IndexId">IndexId</code></td>
<td><p>[required] The index that contains the FAQ lists.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_list_faqs_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
FAQs.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_list_faqs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of FAQs to return in the response. If there
are fewer results in the list, this response contains only the actual
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      FaqSummaryItems = list(
        list(
          Id = "string",
          Name = "string",
          Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          FileFormat = "CSV"|"CSV_WITH_HEADER"|"JSON",
          LanguageCode = "string"
        )
      )
    )

### Request syntax

    svc$list_faqs(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
