<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_get_findings_report_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of a findings report

### Description

Gets the status of a findings report.

### Usage

    inspector2_get_findings_report_status(reportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_get_findings_report_status_:_reportId">reportId</code></td>
<td><p>The ID of the report to retrieve the status of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      destination = list(
        bucketName = "string",
        keyPrefix = "string",
        kmsKeyArn = "string"
      ),
      errorCode = "INTERNAL_ERROR"|"INVALID_PERMISSIONS"|"NO_FINDINGS_FOUND"|"BUCKET_NOT_FOUND"|"INCOMPATIBLE_BUCKET_REGION"|"MALFORMED_KMS_KEY",
      errorMessage = "string",
      filterCriteria = list(
        awsAccountId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        componentId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        componentType = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ec2InstanceImageId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ec2InstanceSubnetId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ec2InstanceVpcId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrImageArchitecture = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrImageHash = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrImagePushedAt = list(
          list(
            endInclusive = as.POSIXct(
              "2015-01-01"
            ),
            startInclusive = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        ecrImageRegistry = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrImageRepositoryName = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrImageTags = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        exploitAvailable = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        findingArn = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        findingStatus = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        findingType = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        firstObservedAt = list(
          list(
            endInclusive = as.POSIXct(
              "2015-01-01"
            ),
            startInclusive = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        fixAvailable = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        inspectorScore = list(
          list(
            lowerInclusive = 123.0,
            upperInclusive = 123.0
          )
        ),
        lambdaFunctionExecutionRoleArn = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionLastModifiedAt = list(
          list(
            endInclusive = as.POSIXct(
              "2015-01-01"
            ),
            startInclusive = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        lambdaFunctionLayers = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionName = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionRuntime = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lastObservedAt = list(
          list(
            endInclusive = as.POSIXct(
              "2015-01-01"
            ),
            startInclusive = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        networkProtocol = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        portRange = list(
          list(
            beginInclusive = 123,
            endInclusive = 123
          )
        ),
        relatedVulnerabilities = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        resourceId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        resourceTags = list(
          list(
            comparison = "EQUALS",
            key = "string",
            value = "string"
          )
        ),
        resourceType = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        severity = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        title = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        updatedAt = list(
          list(
            endInclusive = as.POSIXct(
              "2015-01-01"
            ),
            startInclusive = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        vendorSeverity = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        vulnerabilityId = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        vulnerabilitySource = list(
          list(
            comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
            value = "string"
          )
        ),
        vulnerablePackages = list(
          list(
            architecture = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            ),
            epoch = list(
              lowerInclusive = 123.0,
              upperInclusive = 123.0
            ),
            name = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            ),
            release = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            ),
            sourceLambdaLayerArn = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            ),
            sourceLayerHash = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            ),
            version = list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          )
        )
      ),
      reportId = "string",
      status = "SUCCEEDED"|"IN_PROGRESS"|"CANCELLED"|"FAILED"
    )

### Request syntax

    svc$get_findings_report_status(
      reportId = "string"
    )
