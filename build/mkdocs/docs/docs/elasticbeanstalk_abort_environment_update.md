<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_abort_environment_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels in-progress environment configuration update or application version deployment

### Description

Cancels in-progress environment configuration update or application
version deployment.

### Usage

    elasticbeanstalk_abort_environment_update(EnvironmentId,
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
id="elasticbeanstalk_abort_environment_update_:_EnvironmentId">EnvironmentId</code></td>
<td><p>This specifies the ID of the environment with the in-progress
update that you want to cancel.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_abort_environment_update_:_EnvironmentName">EnvironmentName</code></td>
<td><p>This specifies the name of the environment with the in-progress
update that you want to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$abort_environment_update(
      EnvironmentId = "string",
      EnvironmentName = "string"
    )

### Examples

    ## Not run: 
    # The following code aborts a running application version deployment for
    # an environment named my-env:
    svc$abort_environment_update(
      EnvironmentName = "my-env"
    )

    ## End(Not run)
