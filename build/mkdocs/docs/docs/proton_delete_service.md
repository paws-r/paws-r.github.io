<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a service, with its instances and pipeline

### Description

Delete a service, with its instances and pipeline.

You can't delete a service if it has any service instances that have
components attached to them.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_delete_service(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_delete_service_:_name">name</code></td>
<td><p>[required] The name of the service to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      service = list(
        arn = "string",
        branchName = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        lastModifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        pipeline = list(
          arn = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deploymentStatus = "IN_PROGRESS"|"FAILED"|"SUCCEEDED"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"CANCELLING"|"CANCELLED",
          deploymentStatusMessage = "string",
          lastDeploymentAttemptedAt = as.POSIXct(
            "2015-01-01"
          ),
          lastDeploymentSucceededAt = as.POSIXct(
            "2015-01-01"
          ),
          spec = "string",
          templateMajorVersion = "string",
          templateMinorVersion = "string",
          templateName = "string"
        ),
        repositoryConnectionArn = "string",
        repositoryId = "string",
        spec = "string",
        status = "CREATE_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_IN_PROGRESS"|"CREATE_FAILED_CLEANUP_COMPLETE"|"CREATE_FAILED_CLEANUP_FAILED"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_IN_PROGRESS"|"UPDATE_FAILED_CLEANUP_COMPLETE"|"UPDATE_FAILED_CLEANUP_FAILED"|"UPDATE_FAILED"|"UPDATE_COMPLETE_CLEANUP_FAILED",
        statusMessage = "string",
        templateName = "string"
      )
    )

### Request syntax

    svc$delete_service(
      name = "string"
    )
