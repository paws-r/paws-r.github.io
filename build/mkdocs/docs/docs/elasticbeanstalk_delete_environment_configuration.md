<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_delete_environment_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the draft configuration associated with the running environment

### Description

Deletes the draft configuration associated with the running environment.

Updating a running environment with any configuration changes creates a
draft configuration set. You can get the draft configuration using
`describe_configuration_settings` while the update is in progress or if
the update fails. The `DeploymentStatus` for the draft configuration
indicates whether the deployment is in process or has failed. The draft
configuration remains in existence until it is deleted with this action.

### Usage

    elasticbeanstalk_delete_environment_configuration(ApplicationName,
      EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_environment_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application the environment is
associated with.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_delete_environment_configuration_:_EnvironmentName">EnvironmentName</code></td>
<td><p>[required] The name of the environment to delete the draft
configuration from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_environment_configuration(
      ApplicationName = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation deletes a draft configuration for an environment
    # named my-env:
    svc$delete_environment_configuration(
      ApplicationName = "my-app",
      EnvironmentName = "my-env"
    )

    ## End(Not run)
