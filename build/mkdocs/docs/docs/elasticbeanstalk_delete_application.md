<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified application along with all associated versions and configurations

### Description

Deletes the specified application along with all associated versions and
configurations. The application versions will not be deleted from your
Amazon S3 bucket.

You cannot delete an application that has a running environment.

### Usage

    elasticbeanstalk_delete_application(ApplicationName,
      TerminateEnvByForce)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticbeanstalk_delete_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticbeanstalk_delete_application_:_TerminateEnvByForce">TerminateEnvByForce</code></td>
<td><p>When set to true, running environments will be terminated before
deleting the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      ApplicationName = "string",
      TerminateEnvByForce = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # The following operation deletes an application named my-app:
    svc$delete_application(
      ApplicationName = "my-app"
    )

    ## End(Not run)
