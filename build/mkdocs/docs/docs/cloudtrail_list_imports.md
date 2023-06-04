<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_imports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information on all imports, or a select set of imports by ImportStatus or Destination

### Description

Returns information on all imports, or a select set of imports by
`ImportStatus` or `Destination`.

### Usage

    cloudtrail_list_imports(MaxResults, Destination, ImportStatus,
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
id="cloudtrail_list_imports_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of imports to display on a single
page.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_list_imports_:_Destination">Destination</code></td>
<td><p>The ARN of the destination event data store.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_list_imports_:_ImportStatus">ImportStatus</code></td>
<td><p>The status of the import.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_list_imports_:_NextToken">NextToken</code></td>
<td><p>A token you can use to get the next page of import
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Imports = list(
        list(
          ImportId = "string",
          ImportStatus = "INITIALIZING"|"IN_PROGRESS"|"FAILED"|"STOPPED"|"COMPLETED",
          Destinations = list(
            "string"
          ),
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_imports(
      MaxResults = 123,
      Destination = "string",
      ImportStatus = "INITIALIZING"|"IN_PROGRESS"|"FAILED"|"STOPPED"|"COMPLETED",
      NextToken = "string"
    )
