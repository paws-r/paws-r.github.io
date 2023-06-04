<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Edit a service description or use a spec to add and delete service instances

### Description

Edit a service description or use a spec to add and delete service
instances.

Existing service instances and the service pipeline *can't* be edited
using this API. They can only be deleted.

Use the `description` parameter to modify the description.

Edit the `spec` parameter to add or delete instances.

You can't delete a service instance (remove it from the spec) if it has
an attached component.

For more information about components, see [Proton
components](https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the *Proton User Guide*.

### Usage

    proton_update_service(description, name, spec)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_update_service_:_description">description</code></td>
<td><p>The edited service description.</p></td>
</tr>
<tr class="even">
<td><code id="proton_update_service_:_name">name</code></td>
<td><p>[required] The name of the service to edit.</p></td>
</tr>
<tr class="odd">
<td><code id="proton_update_service_:_spec">spec</code></td>
<td><p>Lists the service instances to add and the existing service
instances to remain. Omit the existing service instances to delete from
the list. <em>Don't</em> include edits to the existing service instances
or pipeline. For more information, see <a
href="https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-update.html">Edit
a service</a> in the <em>Proton User Guide</em>.</p></td>
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

    svc$update_service(
      description = "string",
      name = "string",
      spec = "string"
    )
