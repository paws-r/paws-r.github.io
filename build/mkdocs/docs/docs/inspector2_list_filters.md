<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the filters associated with your account

### Description

Lists the filters associated with your account.

### Usage

    inspector2_list_filters(action, arns, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="inspector2_list_filters_:_action">action</code></td>
<td><p>The action the filter applies to matched findings.</p></td>
</tr>
<tr class="even">
<td><code id="inspector2_list_filters_:_arns">arns</code></td>
<td><p>The Amazon resource number (ARN) of the filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_filters_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code id="inspector2_list_filters_:_nextToken">nextToken</code></td>
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
      filters = list(
        list(
          action = "NONE"|"SUPPRESS",
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          criteria = list(
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
          description = "string",
          name = "string",
          ownerId = "string",
          reason = "string",
          tags = list(
            "string"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_filters(
      action = "NONE"|"SUPPRESS",
      arns = list(
        "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )
