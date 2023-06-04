<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_coverage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists coverage details for you environment

### Description

Lists coverage details for you environment.

### Usage

    inspector2_list_coverage(filterCriteria, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_coverage_:_filterCriteria">filterCriteria</code></td>
<td><p>An object that contains details on the filters to apply to the
coverage data for your environment.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_coverage_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_coverage_:_nextToken">nextToken</code></td>
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
      coveredResources = list(
        list(
          accountId = "string",
          resourceId = "string",
          resourceMetadata = list(
            ec2 = list(
              amiId = "string",
              platform = "WINDOWS"|"LINUX"|"UNKNOWN",
              tags = list(
                "string"
              )
            ),
            ecrImage = list(
              tags = list(
                "string"
              )
            ),
            ecrRepository = list(
              name = "string",
              scanFrequency = "MANUAL"|"SCAN_ON_PUSH"|"CONTINUOUS_SCAN"
            ),
            lambdaFunction = list(
              functionName = "string",
              functionTags = list(
                "string"
              ),
              layers = list(
                "string"
              ),
              runtime = "NODEJS"|"NODEJS_12_X"|"NODEJS_14_X"|"NODEJS_16_X"|"JAVA_8"|"JAVA_8_AL2"|"JAVA_11"|"PYTHON_3_7"|"PYTHON_3_8"|"PYTHON_3_9"|"UNSUPPORTED"|"NODEJS_18_X"|"GO_1_X"
            )
          ),
          resourceType = "AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER_IMAGE"|"AWS_ECR_REPOSITORY"|"AWS_LAMBDA_FUNCTION",
          scanStatus = list(
            reason = "PENDING_INITIAL_SCAN"|"ACCESS_DENIED"|"INTERNAL_ERROR"|"UNMANAGED_EC2_INSTANCE"|"UNSUPPORTED_OS"|"SCAN_ELIGIBILITY_EXPIRED"|"RESOURCE_TERMINATED"|"SUCCESSFUL"|"NO_RESOURCES_FOUND"|"IMAGE_SIZE_EXCEEDED"|"SCAN_FREQUENCY_MANUAL"|"SCAN_FREQUENCY_SCAN_ON_PUSH"|"EC2_INSTANCE_STOPPED"|"PENDING_DISABLE"|"NO_INVENTORY"|"STALE_INVENTORY"|"EXCLUDED_BY_TAG"|"UNSUPPORTED_RUNTIME"|"UNSUPPORTED_MEDIA_TYPE"|"UNSUPPORTED_CONFIG_FILE"|"DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED"|"DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED"|"DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED"|"DEEP_INSPECTION_NO_INVENTORY",
            statusCode = "ACTIVE"|"INACTIVE"
          ),
          scanType = "NETWORK"|"PACKAGE"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_coverage(
      filterCriteria = list(
        accountId = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ec2InstanceTags = list(
          list(
            comparison = "EQUALS",
            key = "string",
            value = "string"
          )
        ),
        ecrImageTags = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        ecrRepositoryName = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionName = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionRuntime = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        lambdaFunctionTags = list(
          list(
            comparison = "EQUALS",
            key = "string",
            value = "string"
          )
        ),
        resourceId = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        resourceType = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanStatusCode = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanStatusReason = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        ),
        scanType = list(
          list(
            comparison = "EQUALS"|"NOT_EQUALS",
            value = "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
