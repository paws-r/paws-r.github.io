<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_delete_project_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing project policy

### Description

Deletes an existing project policy.

To get a list of project policies attached to a project, call
`list_project_policies`. To attach a project policy to a project, call
`put_project_policy`.

This operation requires permissions to perform the
`rekognition:DeleteProjectPolicy` action.

### Usage

    rekognition_delete_project_policy(ProjectArn, PolicyName,
      PolicyRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_delete_project_policy_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the project that the
project policy you want to delete is attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_delete_project_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy that you want to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_delete_project_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>The ID of the project policy revision that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_project_policy(
      ProjectArn = "string",
      PolicyName = "string",
      PolicyRevisionId = "string"
    )

### Examples

    ## Not run: 
    # This operation deletes a revision of an existing project policy from an
    # Amazon Rekognition Custom Labels project.
    svc$delete_project_policy(
      PolicyName = "testPolicy1",
      PolicyRevisionId = "3b274c25e9203a56a99e00e3ff205fbc",
      ProjectArn = "arn:aws:rekognition:us-east-1:111122223333:project/SourceProject/1656557123456"
    )

    ## End(Not run)
