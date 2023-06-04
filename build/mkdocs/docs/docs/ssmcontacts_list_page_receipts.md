<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_list_page_receipts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the engagements to contact channels that have been acknowledged

### Description

Lists all of the engagements to contact channels that have been
acknowledged.

### Usage

    ssmcontacts_list_page_receipts(PageId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_list_page_receipts_:_PageId">PageId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the engagement to a
specific contact channel.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_list_page_receipts_:_NextToken">NextToken</code></td>
<td><p>The pagination token to continue to the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_list_page_receipts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of acknowledgements per page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Receipts = list(
        list(
          ContactChannelArn = "string",
          ReceiptType = "DELIVERED"|"ERROR"|"READ"|"SENT"|"STOP",
          ReceiptInfo = "string",
          ReceiptTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_page_receipts(
      PageId = "string",
      NextToken = "string",
      MaxResults = 123
    )
