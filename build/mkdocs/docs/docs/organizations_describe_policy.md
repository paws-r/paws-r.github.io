<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations_describe_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about a policy

### Description

Retrieves information about a policy.

This operation can be called only from the organization's management
account or by a member account that is a delegated administrator for an
Amazon Web Services service.

### Usage

    organizations_describe_policy(PolicyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="organizations_describe_policy_:_PolicyId">PolicyId</code></td>
<td><p>[required] The unique identifier (ID) of the policy that you want
details about. You can get the ID from the <code>list_policies</code> or
<code>list_policies_for_target</code> operations.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
for a policy ID string requires "p-" followed by from 8 to 128 lowercase
or uppercase letters, digits, or the underscore character (_).</p></td>
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

    svc$describe_policy(
      PolicyId = "string"
    )

### Examples

    ## Not run: 
    # The following example shows how to request information about a
    # policy:/n/n
    svc$describe_policy(
      PolicyId = "p-examplepolicyid111"
    )

    ## End(Not run)
