<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_compose_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create or update a group of environments that each run a separate component of a single application

### Description

Create or update a group of environments that each run a separate
component of a single application. Takes a list of version labels that
specify application source bundles for each of the environments to
create or update. The name of each environment and other required
information must be included in the source bundles in an environment
manifest named `env.yaml`. See [Compose
Environments](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html)
for details.

### Usage

    elasticbeanstalk_compose_environments(ApplicationName, GroupName,
      VersionLabels)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_compose_environments_:_ApplicationName">ApplicationName</code></td>
<td><p>The name of the application to which the specified source bundles
belong.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_compose_environments_:_GroupName">GroupName</code></td>
<td><p>The name of the group to which the target environments belong.
Specify a group name only if the environment name defined in each target
environment's manifest ends with a + (plus) character. See <a
href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment
Manifest (env.yaml)</a> for details.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticbeanstalk_compose_environments_:_VersionLabels">VersionLabels</code></td>
<td><p>A list of version labels, specifying one or more application
source bundles that belong to the target application. Each source bundle
must include an environment manifest that specifies the name of the
environment and the name of the solution stack to use, and optionally
can specify environment links to create.</p></td>
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

    svc$compose_environments(
      ApplicationName = "string",
      GroupName = "string",
      VersionLabels = list(
        "string"
      )
    )
