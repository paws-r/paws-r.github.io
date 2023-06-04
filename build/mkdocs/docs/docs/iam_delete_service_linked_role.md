<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_service_linked_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a service-linked role deletion request and returns a DeletionTaskId, which you can use to check the status of the deletion

### Description

Submits a service-linked role deletion request and returns a
`DeletionTaskId`, which you can use to check the status of the deletion.
Before you call this operation, confirm that the role has no active
sessions and that any resources used by the role in the linked service
are deleted. If you call this operation more than once for the same
service-linked role and an earlier deletion task is not complete, then
the `DeletionTaskId` of the earlier request is returned.

If you submit a deletion request for a service-linked role whose linked
service is still accessing a resource, then the deletion task fails. If
it fails, the `get_service_linked_role_deletion_status` operation
returns the reason for the failure, usually including the resources that
must be deleted. To delete the service-linked role, you must first
remove those resources from the linked service and then submit the
deletion request again. Resources are specific to the service that is
linked to the role. For more information about removing resources from a
service, see the [Amazon Web Services
documentation](https://docs.aws.amazon.com/) for your service.

For more information about service-linked roles, see [Roles terms and
concepts: Amazon Web Services service-linked
role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role)
in the *IAM User Guide*.

### Usage

    iam_delete_service_linked_role(RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_service_linked_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the service-linked role to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DeletionTaskId = "string"
    )

### Request syntax

    svc$delete_service_linked_role(
      RoleName = "string"
    )
