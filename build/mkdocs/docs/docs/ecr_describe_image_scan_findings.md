<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_describe_image_scan_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the scan findings for the specified image

### Description

Returns the scan findings for the specified image.

### Usage

    ecr_describe_image_scan_findings(registryId, repositoryName, imageId,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_describe_image_scan_findings_:_registryId">registryId</code></td>
<td><p>The Amazon Web Services account ID associated with the registry
that contains the repository in which to describe the image scan
findings for. If you do not specify a registry, the default registry is
assumed.</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_image_scan_findings_:_repositoryName">repositoryName</code></td>
<td><p>[required] The repository for the image for which to describe the
scan findings.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_describe_image_scan_findings_:_imageId">imageId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="ecr_describe_image_scan_findings_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_image_scan_findings</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
null when there are no more results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecr_describe_image_scan_findings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of image scan results returned by
<code>describe_image_scan_findings</code> in paginated output. When this
parameter is used, <code>describe_image_scan_findings</code> only
returns <code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_image_scan_findings</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 1000. If
this parameter is not used, then
<code>describe_image_scan_findings</code> returns up to 100 results and
a <code>nextToken</code> value, if applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      registryId = "string",
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      ),
      imageScanStatus = list(
        status = "IN_PROGRESS"|"COMPLETE"|"FAILED"|"UNSUPPORTED_IMAGE"|"ACTIVE"|"PENDING"|"SCAN_ELIGIBILITY_EXPIRED"|"FINDINGS_UNAVAILABLE",
        description = "string"
      ),
      imageScanFindings = list(
        imageScanCompletedAt = as.POSIXct(
          "2015-01-01"
        ),
        vulnerabilitySourceUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        findingSeverityCounts = list(
          123
        ),
        findings = list(
          list(
            name = "string",
            description = "string",
            uri = "string",
            severity = "INFORMATIONAL"|"LOW"|"MEDIUM"|"HIGH"|"CRITICAL"|"UNDEFINED",
            attributes = list(
              list(
                key = "string",
                value = "string"
              )
            )
          )
        ),
        enhancedFindings = list(
          list(
            awsAccountId = "string",
            description = "string",
            findingArn = "string",
            firstObservedAt = as.POSIXct(
              "2015-01-01"
            ),
            lastObservedAt = as.POSIXct(
              "2015-01-01"
            ),
            packageVulnerabilityDetails = list(
              cvss = list(
                list(
                  baseScore = 123.0,
                  scoringVector = "string",
                  source = "string",
                  version = "string"
                )
              ),
              referenceUrls = list(
                "string"
              ),
              relatedVulnerabilities = list(
                "string"
              ),
              source = "string",
              sourceUrl = "string",
              vendorCreatedAt = as.POSIXct(
                "2015-01-01"
              ),
              vendorSeverity = "string",
              vendorUpdatedAt = as.POSIXct(
                "2015-01-01"
              ),
              vulnerabilityId = "string",
              vulnerablePackages = list(
                list(
                  arch = "string",
                  epoch = 123,
                  filePath = "string",
                  name = "string",
                  packageManager = "string",
                  release = "string",
                  sourceLayerHash = "string",
                  version = "string"
                )
              )
            ),
            remediation = list(
              recommendation = list(
                url = "string",
                text = "string"
              )
            ),
            resources = list(
              list(
                details = list(
                  awsEcrContainerImage = list(
                    architecture = "string",
                    author = "string",
                    imageHash = "string",
                    imageTags = list(
                      "string"
                    ),
                    platform = "string",
                    pushedAt = as.POSIXct(
                      "2015-01-01"
                    ),
                    registry = "string",
                    repositoryName = "string"
                  )
                ),
                id = "string",
                tags = list(
                  "string"
                ),
                type = "string"
              )
            ),
            score = 123.0,
            scoreDetails = list(
              cvss = list(
                adjustments = list(
                  list(
                    metric = "string",
                    reason = "string"
                  )
                ),
                score = 123.0,
                scoreSource = "string",
                scoringVector = "string",
                version = "string"
              )
            ),
            severity = "string",
            status = "string",
            title = "string",
            type = "string",
            updatedAt = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_image_scan_findings(
      registryId = "string",
      repositoryName = "string",
      imageId = list(
        imageDigest = "string",
        imageTag = "string"
      ),
      nextToken = "string",
      maxResults = 123
    )
