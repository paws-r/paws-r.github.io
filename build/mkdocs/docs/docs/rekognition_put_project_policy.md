<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_put_project_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches a project policy to a Amazon Rekognition Custom Labels project in a trusting AWS account

### Description

Attaches a project policy to a Amazon Rekognition Custom Labels project
in a trusting AWS account. A project policy specifies that a trusted AWS
account can copy a model version from a trusting AWS account to a
project in the trusted AWS account. To copy a model version you use the
`copy_project_version` operation.

For more information about the format of a project policy document, see
Attaching a project policy (SDK) in the *Amazon Rekognition Custom
Labels Developer Guide*.

The response from `put_project_policy` is a revision ID for the project
policy. You can attach multiple project policies to a project. You can
also update an existing project policy by specifying the policy revision
ID of the existing policy.

To remove a project policy from a project, call `delete_project_policy`.
To get a list of project policies attached to a project, call
`list_project_policies`.

You copy a model version by calling `copy_project_version`.

This operation requires permissions to perform the
`rekognition:PutProjectPolicy` action.

### Usage

    rekognition_put_project_policy(ProjectArn, PolicyName, PolicyRevisionId,
      PolicyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rekognition_put_project_policy_:_ProjectArn">ProjectArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the project that the
project policy is attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_put_project_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] A name for the policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="rekognition_put_project_policy_:_PolicyRevisionId">PolicyRevisionId</code></td>
<td><p>The revision ID for the Project Policy. Each time you modify a
policy, Amazon Rekognition Custom Labels generates and assigns a new
<code>PolicyRevisionId</code> and then deletes the previous version of
the policy.</p></td>
</tr>
<tr class="even">
<td><code
id="rekognition_put_project_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] A resource policy to add to the model. The policy is a
JSON structure that contains one or more statements that define the
policy. The policy must follow the IAM syntax. For more information
about the contents of a JSON policy document, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html">IAM
JSON policy reference</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyRevisionId = "string"
    )

### Request syntax

    svc$put_project_policy(
      ProjectArn = "string",
      PolicyName = "string",
      PolicyRevisionId = "string",
      PolicyDocument = "string"
    )

### Examples

    ## Not run: 
    # This operation attaches a project policy to a Amazon Rekognition Custom
    # Labels project in a trusting AWS account.
    svc$put_project_policy(
      PolicyDocument = "'{"Version":"2012-10-17","Statement":[{"Effect":"ALLOW"...",
      PolicyName = "SamplePolicy",
      PolicyRevisionId = "0123456789abcdef",
      ProjectArn = "arn:aws:rekognition:us-east-1:111122223333:project/my-sdk-p..."
    )

    ## End(Not run)
