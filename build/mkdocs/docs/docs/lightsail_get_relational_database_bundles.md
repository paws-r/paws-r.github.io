<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lightsail_get_relational_database_bundles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of bundles that are available in Amazon Lightsail

### Description

Returns the list of bundles that are available in Amazon Lightsail. A
bundle describes the performance specifications for a database.

You can use a bundle ID to create a new database with explicit
performance specifications.

### Usage

    lightsail_get_relational_database_bundles(pageToken, includeInactive)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lightsail_get_relational_database_bundles_:_pageToken">pageToken</code></td>
<td><p>The token to advance to the next page of results from your
request.</p>
<p>To get a page token, perform an initial
<code>get_relational_database_bundles</code> request. If your results
are paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.</p></td>
</tr>
<tr class="even">
<td><code
id="lightsail_get_relational_database_bundles_:_includeInactive">includeInactive</code></td>
<td><p>A Boolean value that indicates whether to include inactive
(unavailable) bundles in the response of your request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      bundles = list(
        list(
          bundleId = "string",
          name = "string",
          price = 123.0,
          ramSizeInGb = 123.0,
          diskSizeInGb = 123,
          transferPerMonthInGb = 123,
          cpuCount = 123,
          isEncrypted = TRUE|FALSE,
          isActive = TRUE|FALSE
        )
      ),
      nextPageToken = "string"
    )

### Request syntax

    svc$get_relational_database_bundles(
      pageToken = "string",
      includeInactive = TRUE|FALSE
    )
