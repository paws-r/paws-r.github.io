<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the managed policies that are available in your Amazon Web Services account, including your own customer-defined managed policies and all Amazon Web Services managed policies

### Description

Lists all the managed policies that are available in your Amazon Web
Services account, including your own customer-defined managed policies
and all Amazon Web Services managed policies.

You can filter the list of policies that is returned using the optional
`OnlyAttached`, `Scope`, and `PathPrefix` parameters. For example, to
list only the customer managed policies in your Amazon Web Services
account, set `Scope` to `Local`. To list only Amazon Web Services
managed policies, set `Scope` to `AWS`.

You can paginate the results using the `MaxItems` and `Marker`
parameters.

For more information about managed policies, see [Managed policies and
inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

IAM resource-listing operations return a subset of the available
attributes for the resource. For example, this operation does not return
tags, even though they are an attribute of the returned object. To view
all of the information for a customer manged policy, see `get_policy`.

### Usage

    iam_list_policies(Scope, OnlyAttached, PathPrefix, PolicyUsageFilter,
      Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_list_policies_:_Scope">Scope</code></td>
<td><p>The scope to use for filtering the results.</p>
<p>To list only Amazon Web Services managed policies, set
<code>Scope</code> to <code>AWS</code>. To list only the customer
managed policies in your Amazon Web Services account, set
<code>Scope</code> to <code>Local</code>.</p>
<p>This parameter is optional. If it is not included, or if it is set to
<code>All</code>, all policies are returned.</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_policies_:_OnlyAttached">OnlyAttached</code></td>
<td><p>A flag to filter the results to only the attached policies.</p>
<p>When <code>OnlyAttached</code> is <code>true</code>, the returned
list contains only the policies that are attached to an IAM user, group,
or role. When <code>OnlyAttached</code> is <code>false</code>, or when
the parameter is not included, all policies are returned.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_policies_:_PathPrefix">PathPrefix</code></td>
<td><p>The path prefix for filtering the results. This parameter is
optional. If it is not included, it defaults to a slash (/), listing all
policies. This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_list_policies_:_PolicyUsageFilter">PolicyUsageFilter</code></td>
<td><p>The policy usage method to use for filtering the results.</p>
<p>To list only permissions policies,
set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To
list only the policies used to set permissions boundaries, set the value
to <code>PermissionsBoundary</code>.</p>
<p>This parameter is optional. If it is not included, all policies are
returned.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_policies_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_policies_:_MaxItems">MaxItems</code></td>
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
      Policies = list(
        list(
          PolicyName = "string",
          PolicyId = "string",
          Arn = "string",
          Path = "string",
          DefaultVersionId = "string",
          AttachmentCount = 123,
          PermissionsBoundaryUsageCount = 123,
          IsAttachable = TRUE|FALSE,
          Description = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
          UpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_policies(
      Scope = "All"|"AWS"|"Local",
      OnlyAttached = TRUE|FALSE,
      PathPrefix = "string",
      PolicyUsageFilter = "PermissionsPolicy"|"PermissionsBoundary",
      Marker = "string",
      MaxItems = 123
    )
