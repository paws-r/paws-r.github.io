<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_service_linked_role_deletion_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status of your service-linked role deletion

### Description

Retrieves the status of your service-linked role deletion. After you use
`delete_service_linked_role` to submit a service-linked role for
deletion, you can use the `DeletionTaskId` parameter in
`get_service_linked_role_deletion_status` to check the status of the
deletion. If the deletion fails, this operation returns the reason that
it failed, if that information is returned by the service.

### Usage

    iam_get_service_linked_role_deletion_status(DeletionTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_service_linked_role_deletion_status_:_DeletionTaskId">DeletionTaskId</code></td>
<td><p>[required] The deletion task identifier. This identifier is
returned by the <code>delete_service_linked_role</code> operation in the
format <code
style="white-space: pre;">⁠task/aws-service-role/&lt;service-principal-name&gt;/&lt;role-name&gt;/&lt;task-uuid&gt;⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "SUCCEEDED"|"IN_PROGRESS"|"FAILED"|"NOT_STARTED",
      Reason = list(
        Reason = "string",
        RoleUsageList = list(
          list(
            Region = "string",
            Resources = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_service_linked_role_deletion_status(
      DeletionTaskId = "string"
    )
