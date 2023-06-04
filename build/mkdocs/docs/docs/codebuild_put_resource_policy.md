<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores a resource policy for the ARN of a Project or ReportGroup object

### Description

Stores a resource policy for the ARN of a `Project` or `ReportGroup`
object.

### Usage

    codebuild_put_resource_policy(policy, resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_put_resource_policy_:_policy">policy</code></td>
<td><p>[required] A JSON-formatted resource policy. For more
information, see <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share">Sharing
a Project</a> and <a
href="https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share">Sharing
a Report Group</a> in the <em>CodeBuild User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_put_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the <code>Project</code> or
<code>ReportGroup</code> resource you want to associate with a resource
policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string"
    )

### Request syntax

    svc$put_resource_policy(
      policy = "string",
      resourceArn = "string"
    )
