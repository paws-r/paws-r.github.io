<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_list_policy_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version

### Description

Lists information about the versions of the specified managed policy,
including the version that is currently set as the policy's default
version.

For more information about managed policies, see [Managed policies and
inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_list_policy_versions(PolicyArn, Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_list_policy_versions_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy for
which you want the versions.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code id="iam_list_policy_versions_:_Marker">Marker</code></td>
<td><p>Use this parameter only when paginating results and only after
you receive a response indicating that the results are truncated. Set it
to the value of the <code>Marker</code> element in the response that you
received to indicate where the next call should start.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_list_policy_versions_:_MaxItems">MaxItems</code></td>
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
      Versions = list(
        list(
          Document = "string",
          VersionId = "string",
          IsDefaultVersion = TRUE|FALSE,
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      IsTruncated = TRUE|FALSE,
      Marker = "string"
    )

### Request syntax

    svc$list_policy_versions(
      PolicyArn = "string",
      Marker = "string",
      MaxItems = 123
    )
