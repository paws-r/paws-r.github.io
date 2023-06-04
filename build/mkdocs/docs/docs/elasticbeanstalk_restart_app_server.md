<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_restart_app_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Causes the environment to restart the application container server running on each Amazon EC2 instance

### Description

Causes the environment to restart the application container server
running on each Amazon EC2 instance.

### Usage

    elasticbeanstalk_restart_app_server(EnvironmentId, EnvironmentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_restart_app_server_:_EnvironmentId">EnvironmentId</code></td>
<td><p>The ID of the environment to restart the server for.</p>
<p>Condition: You must specify either this or an EnvironmentName, or
both. If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_restart_app_server_:_EnvironmentName">EnvironmentName</code></td>
<td><p>The name of the environment to restart the server for.</p>
<p>Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
<code>MissingRequiredParameter</code> error.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$restart_app_server(
      EnvironmentId = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following operation restarts application servers on all instances in
    # an environment named my-env:
    svc$restart_app_server(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
