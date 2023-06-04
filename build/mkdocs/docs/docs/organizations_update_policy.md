<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_update_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing policy with a new name, description, or content

### Description

Updates an existing policy with a new name, description, or content. If
you don't supply any parameter, that value remains unchanged. You can't
change a policy's type.

This operation can be called only from the organization's management
account.

### Usage

    organizations_update_policy(PolicyId, Name, Description, Content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_update_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The unique identifier (ID) of the policy that you want
to update.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a policy ID string requires "p-" followed by from 8 to 128 lowercase
or uppercase letters, digits, or the underscore character (_).</p></td>
</tr>
<tr class="even">
<td><code id="organizations_update_policy_:_Name">Name</code></td>
<td><p>If provided, the new name for the policy.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
that is used to validate this parameter is a string of any of the
characters in the ASCII character range.</p></td>
</tr>
<tr class="odd">
<td><code
id="organizations_update_policy_:_Description">Description</code></td>
<td><p>If provided, the new description for the policy.</p></td>
</tr>
<tr class="even">
<td><code id="organizations_update_policy_:_Content">Content</code></td>
<td><p>If provided, the new content for the policy. The text must be
correctly formatted JSON that complies with the syntax for the policy's
type. For more information, see <a
href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_syntax.html">Service
Control Policy Syntax</a> in the <em>Organizations User
Guide.</em></p></td>
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

    svc$update_policy(
      PolicyId = "string",
      Name = "string",
      Description = "string",
      Content = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to rename a policy and give it a new
    # description and new content. The output confirms the new name and
    # description text:/n/n
    svc$update_policy(
      Description = "This description replaces the original.",
      Name = "Renamed-Policy",
      PolicyId = "p-examplepolicyid111"
    )

    # The following example shows how to replace the JSON text of the SCP from
    # the preceding example with a new JSON policy text string that allows S3
    # actions instead of EC2 actions:/n/n
    svc$update_policy(
      Content = "{ \"Version\": \"2012-10-17\", \"Statement\": {\"Effect\": \"Allow\", \"A...",
      PolicyId = "p-examplepolicyid111"
    )

    ## End(Not run)
