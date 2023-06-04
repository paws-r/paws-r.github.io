<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_legal_holds</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action returns metadata about active and previous legal holds

### Description

This action returns metadata about active and previous legal holds.

### Usage

    backup_list_legal_holds(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="backup_list_legal_holds_:_NextToken">NextToken</code></td>
<td><p>The next item following a partial list of returned resources. For
example, if a request is made to return <code>maxResults</code> number
of resources, <code>NextToken</code> allows you to return more items in
your list starting at the location pointed to by the next
token.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_legal_holds_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resource list items to be
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      LegalHolds = list(
        list(
          Title = "string",
          Status = "CREATING"|"ACTIVE"|"CANCELING"|"CANCELED",
          Description = "string",
          LegalHoldId = "string",
          LegalHoldArn = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          CancellationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_legal_holds(
      NextToken = "string",
      MaxResults = 123
    )
