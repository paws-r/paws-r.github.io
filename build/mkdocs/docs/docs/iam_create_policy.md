<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new managed policy for your Amazon Web Services account

### Description

Creates a new managed policy for your Amazon Web Services account.

This operation creates a policy version with a version identifier of
`v1` and sets v1 as the policy's default version. For more information
about policy versions, see [Versioning for managed
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html)
in the *IAM User Guide*.

As a best practice, you can validate your IAM policies. To learn more,
see [Validating IAM
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
in the *IAM User Guide*.

For more information about managed policies in general, see [Managed
policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_create_policy(PolicyName, Path, PolicyDocument, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The friendly name of the policy.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_policy_:_Path">Path</code></td>
<td><p>The path for the policy.</p>
<p>For more information about paths, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
identifiers</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/).</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p>
<p>You cannot use an asterisk (*) in the path name.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The JSON policy document that you want to use as the
content for the new policy.</p>
<p>You must provide policies in JSON format in IAM. However, for
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. CloudFormation always converts a YAML policy to
JSON format before submitting it to IAM.</p>
<p>The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM
and STS character quotas</a>.</p>
<p>To learn more about JSON policy grammar, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html">Grammar
of the IAM JSON policy language</a> in the <em>IAM User Guide</em>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="iam_create_policy_:_Description">Description</code></td>
<td><p>A friendly description of the policy.</p>
<p>Typically used to store information about the permissions defined in
the policy. For example, "Grants access to production DynamoDB
tables."</p>
<p>The policy description is immutable. After a value is assigned, it
cannot be changed.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_create_policy_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new IAM customer
managed policy. Each tag consists of a key name and an associated value.
For more information about tagging, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging
IAM resources</a> in the <em>IAM User Guide</em>.</p>
<p>If any one of the tags is invalid or if you exceed the allowed
maximum number of tags, then the entire request fails and the resource
is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
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
    )

### Request syntax

    svc$create_policy(
      PolicyName = "string",
      Path = "string",
      PolicyDocument = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
