<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_put_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a resource policy

### Description

Creates or updates a resource policy.

You can only call this operation from the organization's management
account.

### Usage

    organizations_put_resource_policy(Content, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_put_resource_policy_:_Content">Content</code></td>
<td><p>[required] If provided, the new content for the resource policy.
The text must be correctly formatted JSON that complies with the syntax
for the resource policy's type. For more information, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">Service
Control Policy Syntax</a> in the <em>Organizations User
Guide.</em></p></td>
</tr>
<tr class="even">
<td><code id="organizations_put_resource_policy_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the newly created
resource policy. For each tag in the list, you must specify both a tag
key and a value. You can set the value to an empty string, but you can't
set it to <code>null</code>. For more information about tagging, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
Organizations resources</a> in the Organizations User Guide.</p>
<p>Calls with tags apply to the initial creation of the resource policy,
otherwise an exception is thrown. If any one of the tags is not valid or
if you exceed the allowed number of tags for the resource policy, then
the entire request fails and the resource policy is not
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourcePolicy = list(
        ResourcePolicySummary = list(
          Id = "string",
          Arn = "string"
        ),
        Content = "string"
      )
    )

### Request syntax

    svc$put_resource_policy(
      Content = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
