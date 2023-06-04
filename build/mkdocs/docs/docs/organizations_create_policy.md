<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_create_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual Amazon Web Services account

### Description

Creates a policy of a specified type that you can attach to a root, an
organizational unit (OU), or an individual Amazon Web Services account.

For more information about policies and their use, see [Managing
Organization
Policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).

If the request includes tags, then the requester must have the
`organizations:TagResource` permission.

This operation can be called only from the organization's management
account.

### Usage

    organizations_create_policy(Content, Description, Name, Type, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="organizations_create_policy_:_Content">Content</code></td>
<td><p>[required] The policy text content to add to the new policy. The
text that you supply must adhere to the rules of the policy type you
specify in the <code>Type</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="organizations_create_policy_:_Description">Description</code></td>
<td><p>[required] An optional description to assign to the
policy.</p></td>
</tr>
<tr class="odd">
<td><code id="organizations_create_policy_:_Name">Name</code></td>
<td><p>[required] The friendly name to assign to the policy.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
that is used to validate this parameter is a string of any of the
characters in the ASCII character range.</p></td>
</tr>
<tr class="even">
<td><code id="organizations_create_policy_:_Type">Type</code></td>
<td><p>[required] The type of policy to create. You can specify one of
the following values:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html">SERVICE_CONTROL_POLICY</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="organizations_create_policy_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the newly created
policy. For each tag in the list, you must specify both a tag key and a
value. You can set the value to an empty string, but you can't set it to
<code>null</code>. For more information about tagging, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging
Organizations resources</a> in the Organizations User Guide.</p>
<p>If any one of the tags is not valid or if you exceed the allowed
number of tags for a policy, then the entire request fails and the
policy is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        PolicySummary = list(
          Id = "string",
          Arn = "string",
          Name = "string",
          Description = "string",
          Type = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
          AwsManaged = TRUE|FALSE
        ),
        Content = "string"
      )
    )

### Request syntax

    svc$create_policy(
      Content = "string",
      Description = "string",
      Name = "string",
      Type = "SERVICE_CONTROL_POLICY"|"TAG_POLICY"|"BACKUP_POLICY"|"AISERVICES_OPT_OUT_POLICY",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to create a service control policy (SCP)
    # that is named AllowAllS3Actions. The JSON string in the content
    # parameter specifies the content in the policy. The parameter string is
    # escaped with backslashes to ensure that the embedded double quotes in
    # the JSON policy are treated as literals in the parameter, which itself
    # is surrounded by double quotes:
    # 
    # 
    svc$create_policy(
      Content = "{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"s3:*"}}",
      Description = "Enables admins of attached accounts to delegate all S3 permissions",
      Name = "AllowAllS3Actions",
      Type = "SERVICE_CONTROL_POLICY"
    )

    ## End(Not run)
