<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_finding_aggregations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists aggregated finding data for your environment based on specific criteria

### Description

Lists aggregated finding data for your environment based on specific
criteria.

### Usage

    inspector2_list_finding_aggregations(accountIds, aggregationRequest,
      aggregationType, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_finding_aggregations_:_accountIds">accountIds</code></td>
<td><p>The Amazon Web Services account IDs to retrieve finding
aggregation data for.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_finding_aggregations_:_aggregationRequest">aggregationRequest</code></td>
<td><p>Details of the aggregation request that is used to filter your
aggregation results.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_finding_aggregations_:_aggregationType">aggregationType</code></td>
<td><p>[required] The type of the aggregation request.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_finding_aggregations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector2_list_finding_aggregations_:_nextToken">nextToken</code></td>
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
      aggregationType = "FINDING_TYPE"|"PACKAGE"|"TITLE"|"REPOSITORY"|"AMI"|"AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER"|"IMAGE_LAYER"|"ACCOUNT"|"AWS_LAMBDA_FUNCTION"|"LAMBDA_LAYER",
      nextToken = "string",
      responses = list(
        list(
          accountAggregation = list(
            accountId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          amiAggregation = list(
            accountId = "string",
            affectedInstances = 123,
            ami = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          awsEcrContainerAggregation = list(
            accountId = "string",
            architecture = "string",
            imageSha = "string",
            imageTags = list(
              "string"
            ),
            repository = "string",
            resourceId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          ec2InstanceAggregation = list(
            accountId = "string",
            ami = "string",
            instanceId = "string",
            instanceTags = list(
              "string"
            ),
            networkFindings = 123,
            operatingSystem = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          findingTypeAggregation = list(
            accountId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          imageLayerAggregation = list(
            accountId = "string",
            layerHash = "string",
            repository = "string",
            resourceId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          lambdaFunctionAggregation = list(
            accountId = "string",
            functionName = "string",
            lambdaTags = list(
              "string"
            ),
            lastModifiedAt = as.POSIXct(
              "2015-01-01"
            ),
            resourceId = "string",
            runtime = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          lambdaLayerAggregation = list(
            accountId = "string",
            functionName = "string",
            layerArn = "string",
            resourceId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          packageAggregation = list(
            accountId = "string",
            packageName = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          repositoryAggregation = list(
            accountId = "string",
            affectedImages = 123,
            repository = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            )
          ),
          titleAggregation = list(
            accountId = "string",
            severityCounts = list(
              all = 123,
              critical = 123,
              high = 123,
              medium = 123
            ),
            title = "string",
            vulnerabilityId = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_finding_aggregations(
      accountIds = list(
        list(
          comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
          value = "string"
        )
      ),
      aggregationRequest = list(
        accountAggregation = list(
          findingType = "NETWORK_REACHABILITY"|"PACKAGE_VULNERABILITY",
          resourceType = "AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER_IMAGE"|"AWS_LAMBDA_FUNCTION",
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        amiAggregation = list(
          amis = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL"|"AFFECTED_INSTANCES",
          sortOrder = "ASC"|"DESC"
        ),
        awsEcrContainerAggregation = list(
          architectures = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          imageShas = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          imageTags = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          repositories = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          resourceIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        ec2InstanceAggregation = list(
          amis = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          instanceIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          instanceTags = list(
            list(
              comparison = "EQUALS",
              key = "string",
              value = "string"
            )
          ),
          operatingSystems = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "NETWORK_FINDINGS"|"CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        findingTypeAggregation = list(
          findingType = "NETWORK_REACHABILITY"|"PACKAGE_VULNERABILITY",
          resourceType = "AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER_IMAGE"|"AWS_LAMBDA_FUNCTION",
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        imageLayerAggregation = list(
          layerHashes = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          repositories = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          resourceIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        lambdaFunctionAggregation = list(
          functionNames = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          functionTags = list(
            list(
              comparison = "EQUALS",
              key = "string",
              value = "string"
            )
          ),
          resourceIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          runtimes = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        lambdaLayerAggregation = list(
          functionNames = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          layerArns = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          resourceIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        packageAggregation = list(
          packageNames = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC"
        ),
        repositoryAggregation = list(
          repositories = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          sortBy = "CRITICAL"|"HIGH"|"ALL"|"AFFECTED_IMAGES",
          sortOrder = "ASC"|"DESC"
        ),
        titleAggregation = list(
          resourceType = "AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER_IMAGE"|"AWS_LAMBDA_FUNCTION",
          sortBy = "CRITICAL"|"HIGH"|"ALL",
          sortOrder = "ASC"|"DESC",
          titles = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          ),
          vulnerabilityIds = list(
            list(
              comparison = "EQUALS"|"PREFIX"|"NOT_EQUALS",
              value = "string"
            )
          )
        )
      ),
      aggregationType = "FINDING_TYPE"|"PACKAGE"|"TITLE"|"REPOSITORY"|"AMI"|"AWS_EC2_INSTANCE"|"AWS_ECR_CONTAINER"|"IMAGE_LAYER"|"ACCOUNT"|"AWS_LAMBDA_FUNCTION"|"LAMBDA_LAYER",
      maxResults = 123,
      nextToken = "string"
    )
