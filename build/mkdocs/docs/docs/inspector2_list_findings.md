<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_findings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists findings for your environment

### Description

Lists findings for your environment.

### Usage

    inspector2_list_findings(filterCriteria, maxResults, nextToken,
      sortCriteria)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_findings_:_filterCriteria">filterCriteria</code></td>
<td><p>Details on the filters to apply to your finding results.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_findings_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_findings_:_nextToken">nextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_findings_:_sortCriteria">sortCriteria</code></td>
<td><p>Details on the sort criteria to apply to your finding
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      findings = list(
        list(
          awsAccountId = "string",
          description = "string",
          exploitAvailable = "YES"|"NO",
          exploitabilityDetails = list(
            lastKnownExploitAt = as.POSIXct(
              "2015-01-01"
            )
          ),
          findingArn = "string",
          firstObservedAt = as.POSIXct(
            "2015-01-01"
          ),
          fixAvailable = "YES"|"NO"|"PARTIAL",
          inspectorScore = 123.0,
          inspectorScoreDetails = list(
            adjustedCvss = list(
              adjustments = list(
                list(
                  metric = "string",
                  reason = "string"
                )
              ),
              cvssSource = "string",
              score = 123.0,
              scoreSource = "string",
              scoringVector = "string",
              version = "string"
            )
          ),
          lastObservedAt = as.POSIXct(
            "2015-01-01"
          ),
          networkReachabilityDetails = list(
            networkPath = list(
              steps = list(
                list(
                  componentId = "string",
                  componentType = "string"
                )
              )
            ),
            openPortRange = list(
              begin = 123,
              end = 123
            ),
            protocol = "TCP"|"UDP"
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
                fixedInVersion = "string",
                name = "string",
                packageManager = "BUNDLER"|"CARGO"|"COMPOSER"|"NPM"|"NUGET"|"PIPENV"|"POETRY"|"YARN"|"GOBINARY"|"GOMOD"|"JAR"|"OS"|"PIP"|"PYTHONPKG"|"NODEPKG"|"POM"|"GEMSPEC",
                release = "string",
                remediation = "string",
                sourceLambdaLayerArn = "string",
                sourceLayerHash = "string",
                version = "string"
              )
            )
          ),
          remediation = list(
            recommendation = list(
              Url = "string",
              text = "string"
            )
          ),
          resources = list(
            list(
              details = list(
                awsEc2Instance = list(
                  iamInstanceProfileArn = "string",
                  imageId = "string",
                  ipV4Addresses = list(
                    "string"
                  ),
                  ipV6Addresses = list(
                    "string"
                  ),
                  keyName = "string",
                  launchedAt = as.POSIXct(
                    "2015-01-01"
                  ),
                  platform = "string",
                  subnetId = "string",
                  type = "string",
                  vpcId = "string"
                ),
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
                ),
                awsLambdaFunction = list(
                  architectures = list(
                    "X86_64"|"ARM64"
                  ),
                  codeSha256 = "string",
                  executionRoleArn = "string",
                  functionName = "string",
                  lastModifiedAt = as.POSIXct(
                    "2015-01-01"
                  ),
                  layers = list(
                    "string"
                  ),
                  packageType = "IMAGE"|"ZIP",
                  runtime = "NODEJS"|"NODEJS_12_X"|"NODEJS_14_X"|"NODEJS_16_X"|"JAVA_8"|"JAVA_8_AL2"|"JAVA_11"|"PYTHON_3_7"|"PYTHON_3_8"|"PYTHON_3_9"|"UNSUPPORTED"|"NODEJS_18_X"|"GO_1_X",
                  version = "string",
                  vpcConfig = list(
                    securityGroupIds = list(
                      "string"
                    ),
                    subnetIds = list(
                      "string"
                    ),
                    vpcId = "string"
                  )
                )
              ),
              id = "string",
              partition = "string",
              region = "string",
              tags = list(
                "string"
              ),
              type = "AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER_IMAGE"|"AWS_ECR_REPOSITORY"|"AWS_LAMBDA_FUNCTION"
            )
          ),
          severity = "INFORMATIONAL"|"LOW"|"MEDIUM"|"HIGH"|"CRITICAL"|"UNTRIAGED",
          status = "ACTIVE"|"SUPPRESSED"|"CLOSED",
          title = "string",
          type = "NETWORK_REACHABILITY"|"PACKAGE_VULNERABILITY",
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_findings(
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
      maxResults = 123,
      nextToken = "string",
      sortCriteria = list(
        field = "AWS_ACCOUNT_ID"|"FINDING_TYPE"|"SEVERITY"|"FIRST_OBSERVED_AT"|"LAST_OBSERVED_AT"|"FINDING_STATUS"|"RESOURCE_TYPE"|"ECR_IMAGE_PUSHED_AT"|"ECR_IMAGE_REPOSITORY_NAME"|"ECR_IMAGE_REGISTRY"|"NETWORK_PROTOCOL"|"COMPONENT_TYPE"|"VULNERABILITY_ID"|"VULNERABILITY_SOURCE"|"INSPECTOR_SCORE"|"VENDOR_SEVERITY",
        sortOrder = "ASC"|"DESC"
      )
    )
