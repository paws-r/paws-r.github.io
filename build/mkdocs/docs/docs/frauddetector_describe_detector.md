<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_describe_detector</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets all versions for a specified detector

### Description

Gets all versions for a specified detector.

### Usage

    frauddetector_describe_detector(detectorId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_describe_detector_:_detectorId">detectorId</code></td>
<td><p>[required] The detector ID.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_describe_detector_:_nextToken">nextToken</code></td>
<td><p>The next token from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_describe_detector_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return for the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      detectorId = "string",
      detectorVersionSummaries = list(
        list(
          detectorVersionId = "string",
          status = "DRAFT"|"ACTIVE"|"INACTIVE",
          description = "string",
          lastUpdatedTime = "string"
        )
      ),
      nextToken = "string",
      arn = "string"
    )

### Request syntax

    svc$describe_detector(
      detectorId = "string",
      nextToken = "string",
      maxResults = 123
    )
