<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_list_ledgers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all ledgers that are associated with the current Amazon Web Services account and Region

### Description

Returns all ledgers that are associated with the current Amazon Web
Services account and Region.

This action returns a maximum of `MaxResults` items and is paginated so
that you can retrieve all the items by calling `list_ledgers` multiple
times.

### Usage

    qldb_list_ledgers(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_list_ledgers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
<code>list_ledgers</code> request. (The actual number of results
returned might be fewer.)</p></td>
</tr>
<tr class="even">
<td><code id="qldb_list_ledgers_:_NextToken">NextToken</code></td>
<td><p>A pagination token, indicating that you want to retrieve the next
page of results. If you received a value for <code>NextToken</code> in
the response from a previous <code>list_ledgers</code> call, then you
should use that value as input here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ledgers = list(
        list(
          Name = "string",
          State = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
          CreationDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_ledgers(
      MaxResults = 123,
      NextToken = "string"
    )
