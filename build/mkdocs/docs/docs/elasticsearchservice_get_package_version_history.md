<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_get_package_version_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of versions of the package, along with their creation time and commit message

### Description

Returns a list of versions of the package, along with their creation
time and commit message.

### Usage

    elasticsearchservice_get_package_version_history(PackageID, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_get_package_version_history_:_PackageID">PackageID</code></td>
<td><p>[required] Returns an audit history of versions of the
package.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_get_package_version_history_:_MaxResults">MaxResults</code></td>
<td><p>Limits results to a maximum number of versions.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_get_package_version_history_:_NextToken">NextToken</code></td>
<td><p>Used for pagination. Only necessary if a previous API call
includes a non-null NextToken value. If provided, returns results for
the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PackageID = "string",
      PackageVersionHistoryList = list(
        list(
          PackageVersion = "string",
          CommitMessage = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_package_version_history(
      PackageID = "string",
      MaxResults = 123,
      NextToken = "string"
    )
