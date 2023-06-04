<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_suppressed_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of email addresses that are on the suppression list for your account

### Description

Retrieves a list of email addresses that are on the suppression list for
your account.

### Usage

    sesv2_list_suppressed_destinations(Reasons, StartDate, EndDate,
      NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_list_suppressed_destinations_:_Reasons">Reasons</code></td>
<td><p>The factors that caused the email address to be added to
.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_suppressed_destinations_:_StartDate">StartDate</code></td>
<td><p>Used to filter the list of suppressed email destinations so that
it only includes addresses that were added to the list after a specific
date.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_list_suppressed_destinations_:_EndDate">EndDate</code></td>
<td><p>Used to filter the list of suppressed email destinations so that
it only includes addresses that were added to the list before a specific
date.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_suppressed_destinations_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_suppressed_destinations</code> to indicate the position in
the list of suppressed email addresses.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_list_suppressed_destinations_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_suppressed_destinations</code>. If the number of results is
larger than the number you specified in this parameter, then the
response includes a <code>NextToken</code> element, which you can use to
obtain additional results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuppressedDestinationSummaries = list(
        list(
          EmailAddress = "string",
          Reason = "BOUNCE"|"COMPLAINT",
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_suppressed_destinations(
      Reasons = list(
        "BOUNCE"|"COMPLAINT"
      ),
      StartDate = as.POSIXct(
        "2015-01-01"
      ),
      EndDate = as.POSIXct(
        "2015-01-01"
      ),
      NextToken = "string",
      PageSize = 123
    )
