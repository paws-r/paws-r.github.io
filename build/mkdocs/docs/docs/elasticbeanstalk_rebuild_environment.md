<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_rebuild_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc

### Description

Deletes and recreates all of the AWS resources (for example: the Auto
Scaling group, load balancer, etc.) for a specified environment and
forces a restart.

### Usage

    elasticbeanstalk_rebuild_environment(EnvironmentId, EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_rebuild_environment_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment to rebuild.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_rebuild_environment_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to rebuild.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$rebuild_environment(
      EnvironmentId = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation terminates and recreates the resources in an
    # environment named my-env:
    svc$rebuild_environment(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
