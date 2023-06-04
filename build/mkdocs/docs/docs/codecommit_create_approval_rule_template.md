<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_approval_rule_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a template for approval rules that can then be associated with one or more repositories in your AWS account

### Description

Creates a template for approval rules that can then be associated with
one or more repositories in your AWS account. When you associate a
template with a repository, AWS CodeCommit creates an approval rule that
matches the conditions of the template for all pull requests that meet
the conditions of the template. For more information, see
`associate_approval_rule_template_with_repository`.

### Usage

    codecommit_create_approval_rule_template(approvalRuleTemplateName,
      approvalRuleTemplateContent, approvalRuleTemplateDescription)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_approval_rule_template_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template. Provide
descriptive names, because this name is applied to the approval rules
created automatically in associated repositories.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_approval_rule_template_:_approvalRuleTemplateContent">approvalRuleTemplateContent</code></td>
<td><p>[required] The content of the approval rule that is created on
pull requests in associated repositories. If you specify one or more
destination references (branches), approval rules are created in an
associated repository only if their destination references (branches)
match those specified in the template.</p>
<p>When you create the content of the approval rule template, you can
specify approvers in an approval pool in one of two ways:</p>
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
<tr class="odd">
<td><code
id="codecommit_create_approval_rule_template_:_approvalRuleTemplateDescription">approvalRuleTemplateDescription</code></td>
<td><p>The description of the approval rule template. Consider providing
a description that explains what this template does and when it might be
appropriate to associate it with repositories.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvalRuleTemplate = list(
        approvalRuleTemplateId = "string",
        approvalRuleTemplateName = "string",
        approvalRuleTemplateDescription = "string",
        approvalRuleTemplateContent = "string",
        ruleContentSha256 = "string",
        lastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        lastModifiedUser = "string"
      )
    )

### Request syntax

    svc$create_approval_rule_template(
      approvalRuleTemplateName = "string",
      approvalRuleTemplateContent = "string",
      approvalRuleTemplateDescription = "string"
    )
