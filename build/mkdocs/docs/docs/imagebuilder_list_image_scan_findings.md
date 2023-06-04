<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>imagebuilder_list_image_scan_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of image scan findings for your account

### Description

Returns a list of image scan findings for your account.

### Usage

    imagebuilder_list_image_scan_findings(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="imagebuilder_list_image_scan_findings_:_filters">filters</code></td>
<td><p>An array of name value pairs that you can use to filter your
results. You can use the following filters to streamline results:</p>
<ul>
<li><p><code>imageBuildVersionArn</code></p></li>
<li><p><code>imagePipelineArn</code></p></li>
<li><p><code>vulnerabilityId</code></p></li>
<li><p><code>severity</code></p></li>
</ul>
<p>If you don't request a filter, then all findings in your account are
listed.</p></td>
</tr>
<tr class="even">
<td><code
id="imagebuilder_list_image_scan_findings_:_maxResults">maxResults</code></td>
<td><p>The maximum items to return in a request.</p></td>
</tr>
<tr class="odd">
<td><code
id="imagebuilder_list_image_scan_findings_:_nextToken">nextToken</code></td>
<td><p>A token to specify where to start paginating. This is the
NextToken from a previously truncated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      requestId = "string",
      findings = list(
        list(
          awsAccountId = "string",
          imageBuildVersionArn = "string",
          imagePipelineArn = "string",
          type = "string",
          description = "string",
          title = "string",
          remediation = list(
            recommendation = list(
              text = "string",
              url = "string"
            )
          ),
          severity = "string",
          firstObservedAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          ),
          inspectorScore = 123.0,
          inspectorScoreDetails = list(
            adjustedCvss = list(
              scoreSource = "string",
              cvssSource = "string",
              version = "string",
              score = 123.0,
              scoringVector = "string",
              adjustments = list(
                list(
                  metric = "string",
                  reason = "string"
                )
              )
            )
          ),
          packageVulnerabilityDetails = list(
            vulnerabilityId = "string",
            vulnerablePackages = list(
              list(
                name = "string",
                version = "string",
                sourceLayerHash = "string",
                epoch = 123,
                release = "string",
                arch = "string",
                packageManager = "string",
                filePath = "string",
                fixedInVersion = "string",
                remediation = "string"
              )
            ),
            source = "string",
            cvss = list(
              list(
                baseScore = 123.0,
                scoringVector = "string",
                version = "string",
                source = "string"
              )
            ),
            relatedVulnerabilities = list(
              "string"
            ),
            sourceUrl = "string",
            vendorSeverity = "string",
            vendorCreatedAt = as.POSIXct(
              "2015-01-01"
            ),
            vendorUpdatedAt = as.POSIXct(
              "2015-01-01"
            ),
            referenceUrls = list(
              "string"
            )
          ),
          fixAvailable = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_image_scan_findings(
      filters = list(
        list(
          name = "string",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
