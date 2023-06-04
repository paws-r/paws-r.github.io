<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_role_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the names of the inline policies that are embedded in the specified IAM role

### Description

Lists the names of the inline policies that are embedded in the
specified IAM role.

An IAM role can also have managed policies attached to it. To list the
managed policies that are attached to a role, use
`list_attached_role_policies`. For more information about policies, see
[Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker`
parameters. If there are no inline policies embedded with the specified
role, the operation returns an empty list.

### Usage

    iam_list_role_policies(RoleName, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_role_policies_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to list policies for.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_role_policies_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_role_policies_:_MaxItems">MaxItems</code></td>
<td><p>Use this only when paginating results to indicate the maximum
number of items you want in the response. If additional items exist
beyond the maximum you specify, the <code>IsTruncated</code> response
element is <code>true</code>.</p>
<p>If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the <code>IsTruncated</code> response
element returns <code>true</code>, and <code>Marker</code> contains a
value to include in the subsequent call that tells the service where to
continue from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyNames = list(
        "string"
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_role_policies(
      RoleName = "string",
      Marker = "string",
      MaxItems = 123
    )
