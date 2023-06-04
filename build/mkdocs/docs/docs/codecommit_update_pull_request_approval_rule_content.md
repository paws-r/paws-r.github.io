<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_pull_request_approval_rule_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the structure of an approval rule created specifically for a pull request

### Description

Updates the structure of an approval rule created specifically for a
pull request. For example, you can change the number of required
approvers and the approval pool for approvers.

### Usage

    codecommit_update_pull_request_approval_rule_content(pullRequestId,
      approvalRuleName, existingRuleContentSha256, newRuleContent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_pull_request_approval_rule_content_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_pull_request_approval_rule_content_:_approvalRuleName">approvalRuleName</code></td>
<td><p>[required] The name of the approval rule you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_update_pull_request_approval_rule_content_:_existingRuleContentSha256">existingRuleContentSha256</code></td>
<td><p>The SHA-256 hash signature for the content of the approval rule.
You can retrieve this information by using
<code>get_pull_request</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_pull_request_approval_rule_content_:_newRuleContent">newRuleContent</code></td>
<td><p>[required] The updated content for the approval rule.</p>
<p>When you update the content of the approval rule, you can specify
approvers in an approval pool in one of two ways:</p>
<ul>
<li><p><strong>CodeCommitApprovers</strong>: This option only requires
an AWS account and a resource. It can be used for both IAM users and
federated access users whose name matches the provided resource name.
This is a very powerful option that offers a great deal of flexibility.
For example, if you specify the AWS account <em>123456789012</em> and
<em>Mary_Major</em>, all of the following are counted as approvals
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

    svc$update_pull_request_approval_rule_content(
      pullRequestId = "string",
      approvalRuleName = "string",
      existingRuleContentSha256 = "string",
      newRuleContent = "string"
    )
