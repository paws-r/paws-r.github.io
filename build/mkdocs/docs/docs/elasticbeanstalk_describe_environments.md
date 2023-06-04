<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_describe_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptions for existing environments

### Description

Returns descriptions for existing environments.

### Usage

    elasticbeanstalk_describe_environments(ApplicationName, VersionLabel,
      EnvironmentIds, EnvironmentNames, IncludeDeleted, IncludedDeletedBackTo,
      MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environments_:_ApplicationName">ApplicationName</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to include only those that are associated with this
application.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environments_:_VersionLabel">VersionLabel</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to include only those that are associated with this
application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environments_:_EnvironmentIds">EnvironmentIds</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to include only those that have the specified IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environments_:_EnvironmentNames">EnvironmentNames</code></td>
<td><p>If specified, AWS Elastic Beanstalk restricts the returned
descriptions to include only those that have the specified
names.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environments_:_IncludeDeleted">IncludeDeleted</code></td>
<td><p>Indicates whether to include deleted environments:</p>
<p><code>true</code>: Environments that have been deleted after
<code>IncludedDeletedBackTo</code> are displayed.</p>
<p><code>false</code>: Do not include deleted environments.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environments_:_IncludedDeletedBackTo">IncludedDeletedBackTo</code></td>
<td><p>If specified when <code>IncludeDeleted</code> is set to
<code>true</code>, then environments deleted after this date are
displayed.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_describe_environments_:_MaxRecords">MaxRecords</code></td>
<td><p>For a paginated request. Specify a maximum number of environments
to include in each response.</p>
<p>If no <code>MaxRecords</code> is specified, all available
environments are retrieved in a single response.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_describe_environments_:_NextToken">NextToken</code></td>
<td><p>For a paginated request. Specify a token from a previous response
page to retrieve the next response page. All other parameter values must
be identical to the ones specified in the initial request.</p>
<p>If no <code>NextToken</code> is specified, the first page is
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Environments = list(
        list(
          EnvironmentName = "string",
          EnvironmentId = "string",
          ApplicationName = "string",
          VersionLabel = "string",
          SolutionStackName = "string",
          PlatformArn = "string",
          TemplateName = "string",
          Description = "string",
          EndpointURL = "string",
          CNAME = "string",
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateUpdated = as.POSIXct(
            "2015-01-01"
          ),
          Status = "Aborting"|"Launching"|"Updating"|"LinkingFrom"|"LinkingTo"|"Ready"|"Terminating"|"Terminated",
          AbortableOperationInProgress = TRUE|FALSE,
          Health = "Green"|"Yellow"|"Red"|"Grey",
          HealthStatus = "NoData"|"Unknown"|"Pending"|"Ok"|"Info"|"Warning"|"Degraded"|"Severe"|"Suspended",
          Resources = list(
            LoadBalancer = list(
              LoadBalancerName = "string",
              Domain = "string",
              Listeners = list(
                list(
                  Protocol = "string",
                  Port = 123
                )
              )
            )
          ),
          Tier = list(
            Name = "string",
            Type = "string",
            Version = "string"
          ),
          EnvironmentLinks = list(
            list(
              LinkName = "string",
              EnvironmentName = "string"
            )
          ),
          EnvironmentArn = "string",
          OperationsRole = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_environments(
      ApplicationName = "string",
      VersionLabel = "string",
      EnvironmentIds = list(
        "string"
      ),
      EnvironmentNames = list(
        "string"
      ),
      IncludeDeleted = TRUE|FALSE,
      IncludedDeletedBackTo = as.POSIXct(
        "2015-01-01"
      ),
      MaxRecords = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following operation retrieves information about an environment named
    # my-env:
    svc$describe_environments(
      EnvironmentNames = list(
        "my-env"
      )
    )

    ## End(Not run)
