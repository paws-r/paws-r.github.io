<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_attached_group_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all managed policies that are attached to the specified IAM group

### Description

Lists all managed policies that are attached to the specified IAM group.

An IAM group can also have inline policies embedded with it. To list the
inline policies for a group, use `list_group_policies`. For information
about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

You can paginate the results using the `MaxItems` and `Marker`
parameters. You can use the `PathPrefix` parameter to limit the list of
policies to only those matching the specified path prefix. If there are
no policies attached to the specified group (or none that match the
specified path prefix), the operation returns an empty list.

### Usage

    iam_list_attached_group_policies(GroupName, PathPrefix, Marker,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_attached_group_policies_:_GroupName">GroupName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the group to list
attached policies for.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_attached_group_policies_:_PathPrefix">PathPrefix</code></td>
<td><p>The path prefix for filtering the results. This parameter is
optional. If it is not included, it defaults to a slash (/), listing all
policies.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_list_attached_group_policies_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_attached_group_policies_:_MaxItems">MaxItems</code></td>
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
      AttachedPolicies = list(
        list(
          PolicyName = "string",
          PolicyArn = "string"
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_attached_group_policies(
      GroupName = "string",
      PathPrefix = "string",
      Marker = "string",
      MaxItems = 123
    )
