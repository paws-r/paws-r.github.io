<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_search_vulnerabilities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists Amazon Inspector coverage details for a specific vulnerability

### Description

Lists Amazon Inspector coverage details for a specific vulnerability.

### Usage

    inspector2_search_vulnerabilities(filterCriteria, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_search_vulnerabilities_:_filterCriteria">filterCriteria</code></td>
<td><p>[required] The criteria used to filter the results of a
vulnerability search.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_search_vulnerabilities_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      vulnerabilities = list(
        list(
          atigData = list(
            firstSeen = as.POSIXct(
              "2015-01-01"
            ),
            lastSeen = as.POSIXct(
              "2015-01-01"
            ),
            targets = list(
              "string"
            ),
            ttps = list(
              "string"
            )
          ),
          cisaData = list(
            action = "string",
            dateAdded = as.POSIXct(
              "2015-01-01"
            ),
            dateDue = as.POSIXct(
              "2015-01-01"
            )
          ),
          cvss2 = list(
            baseScore = 123.0,
            scoringVector = "string"
          ),
          cvss3 = list(
            baseScore = 123.0,
            scoringVector = "string"
          ),
          cwes = list(
            "string"
          ),
          description = "string",
          detectionPlatforms = list(
            "string"
          ),
          epss = list(
            score = 123.0
          ),
          exploitObserved = list(
            firstSeen = as.POSIXct(
              "2015-01-01"
            ),
            lastSeen = as.POSIXct(
              "2015-01-01"
            )
          ),
          id = "string",
          referenceUrls = list(
            "string"
          ),
          relatedVulnerabilities = list(
            "string"
          ),
          source = "NVD",
          sourceUrl = "string",
          vendorCreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          vendorSeverity = "string",
          vendorUpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$search_vulnerabilities(
      filterCriteria = list(
        vulnerabilityIds = list(
          "string"
        )
      ),
      nextToken = "string"
    )
