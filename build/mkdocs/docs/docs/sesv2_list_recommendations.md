<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the recommendations present in your Amazon SES account in the current Amazon Web Services Region

### Description

Lists the recommendations present in your Amazon SES account in the
current Amazon Web Services Region.

You can execute this operation no more than once per second.

### Usage

    sesv2_list_recommendations(Filter, NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_list_recommendations_:_Filter">Filter</code></td>
<td><p>Filters applied when retrieving recommendations. Can eiter be an
individual filter, or combinations of <code>STATUS</code> and
<code>IMPACT</code> or <code>STATUS</code> and
<code>TYPE</code></p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_recommendations_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_recommendations</code> to indicate the position in the list
of recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_list_recommendations_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_recommendations</code>. If the number of results is larger
than the number you specified in this parameter, then the response
includes a <code>NextToken</code> element, which you can use to obtain
additional results.</p>
<p>The value you specify has to be at least 1, and can be no more than
100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Recommendations = list(
        list(
          ResourceArn = "string",
          Type = "DKIM"|"DMARC"|"SPF"|"BIMI",
          Description = "string",
          Status = "OPEN"|"FIXED",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Impact = "LOW"|"HIGH"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_recommendations(
      Filter = list(
        "string"
      ),
      NextToken = "string",
      PageSize = 123
    )
