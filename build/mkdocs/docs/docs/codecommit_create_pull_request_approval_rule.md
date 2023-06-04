<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_pull_request_approval_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an approval rule for a pull request

### Description

Creates an approval rule for a pull request.

### Usage

    codecommit_create_pull_request_approval_rule(pullRequestId,
      approvalRuleName, approvalRuleContent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_pull_request_approval_rule_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request for which
you want to create the approval rule.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_pull_request_approval_rule_:_approvalRuleName">approvalRuleName</code></td>
<td><p>[required] The name for the approval rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_pull_request_approval_rule_:_approvalRuleContent">approvalRuleContent</code></td>
<td><p>[required] The content of the approval rule, including the number
of approvals needed and the structure of an approval pool defined for
approvals, if any. For more information about approval pools, see the
AWS CodeCommit User Guide.</p>
<p>When you create the content of the approval rule, you can specify
approvers in an approval pool in one of two ways:</p>
<ul>
<li><p><strong>CodeCommitApprovers</strong>: This option only requires
an AWS account and a resource. It can be used for both IAM users and
federated access users whose name matches the provided resource name.
This is a very powerful option that offers a great deal of flexibility.
For example, if you specify the AWS account <em>123456789012</em> and
<em>Mary_Major</em>, all of the following would be counted as approvals
coming from that user:</p>
<ul>
<li><p>An IAM user in the account
(arn:aws:iam::<em>123456789012</em>:user/<em>Mary_Major</em>)</p></li>
<li><p>A federated user identified in IAM as Mary_Major
(arn:aws:sts::<em>123456789012</em>:federated-user/<em>Mary_Major</em>)</p></li>
</ul>
<p>This option does not recognize an active session of someone assuming
the role of CodeCommitReview with a role session name of
<em>Mary_Major</em>
(arn:aws:sts::<em>123456789012</em>:assumed-role/CodeCommitReview/<em>Mary_Major</em>)
unless you include a wildcard (*Mary_Major).</p></li>
<li><p><strong>Fully qualified ARN</strong>: This option allows you to
specify the fully qualified Amazon Resource Name (ARN) of the IAM user
or role.</p></li>
</ul>
<p>For more information about IAM ARNs, wildcards, and formats, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
Identifiers</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvalRule = list(
        approvalRuleId = "string",
        approvalRuleName = "string",
        approvalRuleContent = "string",
        ruleContentSha256 = "string",
        lastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        lastModifiedUser = "string",
        originApprovalRuleTemplate = list(
          approvalRuleTemplateId = "string",
          approvalRuleTemplateName = "string"
        )
      )
    )

### Request syntax

    svc$create_pull_request_approval_rule(
      pullRequestId = "string",
      approvalRuleName = "string",
      approvalRuleContent = "string"
    )
