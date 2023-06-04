<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_import_failures</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of failures for the specified import

### Description

Returns a list of failures for the specified import.

### Usage

    cloudtrail_list_import_failures(ImportId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_import_failures_:_ImportId">ImportId</code></td>
<td><p>[required] The ID of the import.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudtrail_list_import_failures_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of failures to display on a single
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudtrail_list_import_failures_:_NextToken">NextToken</code></td>
<td><p>A token you can use to get the next page of import
failures.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Failures = list(
        list(
          Location = "string",
          Status = "FAILED"|"RETRY"|"SUCCEEDED",
          ErrorType = "string",
          ErrorMessage = "string",
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_import_failures(
      ImportId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
