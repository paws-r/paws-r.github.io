<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_update_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies the action that is to be applied to the findings that match the filter

### Description

Specifies the action that is to be applied to the findings that match
the filter.

### Usage

    inspector2_update_filter(action, description, filterArn, filterCriteria,
      name, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_update_filter_:_action">action</code></td>
<td><p>Specifies the action that is to be applied to the findings that
match the filter.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_update_filter_:_description">description</code></td>
<td><p>A description of the filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_update_filter_:_filterArn">filterArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the filter to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_update_filter_:_filterCriteria">filterCriteria</code></td>
<td><p>Defines the criteria to be update in the filter.</p></td>
</tr>
<tr class="odd">
<td><code id="inspector2_update_filter_:_name">name</code></td>
<td><p>The name of the filter.</p></td>
</tr>
<tr class="even">
<td><code id="inspector2_update_filter_:_reason">reason</code></td>
<td><p>The reason the filter was updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string"
    )

### Request syntax

    svc$update_filter(
      action = "NONE"|"SUPPRESS",
      description = "string",
      filterArn = "string",
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
      name = "string",
      reason = "string"
    )
