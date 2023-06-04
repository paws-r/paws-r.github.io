<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_get_detectors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all detectors or a single detector if a detectorId is specified

### Description

Gets all detectors or a single detector if a `detectorId` is specified.
This is a paginated API. If you provide a null `maxResults`, this action
retrieves a maximum of 10 records per page. If you provide a
`maxResults`, the value must be between 5 and 10. To get the next page
results, provide the pagination token from the `GetDetectorsResponse` as
part of your request. A null pagination token fetches the records from
the beginning.

### Usage

    frauddetector_get_detectors(detectorId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_get_detectors_:_detectorId">detectorId</code></td>
<td><p>The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_get_detectors_:_nextToken">nextToken</code></td>
<td><p>The next token for the subsequent request.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_get_detectors_:_maxResults">maxResults</code></td>
<td><p>The maximum number of objects to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      detectors = list(
        list(
          detectorId = "string",
          description = "string",
          eventTypeName = "string",
          lastUpdatedTime = "string",
          createdTime = "string",
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_detectors(
      detectorId = "string",
      nextToken = "string",
      maxResults = 123
    )
