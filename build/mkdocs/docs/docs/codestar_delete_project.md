<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_delete_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a project, including project resources

### Description

Deletes a project, including project resources. Does not delete users
associated with the project, but does delete the IAM roles that allowed
access to the project.

### Usage

    codestar_delete_project(id, clientRequestToken, deleteStack)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_delete_project_:_id">id</code></td>
<td><p>[required] The ID of the project to be deleted in AWS
CodeStar.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_delete_project_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A user- or system-generated token that identifies the entity that
requested project deletion. This token can be used to repeat the
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_delete_project_:_deleteStack">deleteStack</code></td>
<td><p>Whether to send a delete request for the primary stack in AWS
CloudFormation originally used to generate the project and its
resources. This option will delete all AWS resources for the project
(except for any buckets in Amazon S3) as well as deleting the project
itself. Recommended for most use cases.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      stackId = "string",
      projectArn = "string"
    )

### Request syntax

    svc$delete_project(
      id = "string",
      clientRequestToken = "string",
      deleteStack = TRUE|FALSE
    )
