<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_approval_rule_template_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the content of an approval rule template

### Description

Updates the content of an approval rule template. You can change the
number of required approvals, the membership of the approval rule, and
whether an approval pool is defined.

### Usage

    codecommit_update_approval_rule_template_content(
      approvalRuleTemplateName, newRuleContent, existingRuleContentSha256)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_approval_rule_template_content_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template where you want
to update the content of the rule.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_approval_rule_template_content_:_newRuleContent">newRuleContent</code></td>
<td><p>[required] The content that replaces the existing content of the
rule. Content statements must be complete. You cannot provide only the
changes.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_update_approval_rule_template_content_:_existingRuleContentSha256">existingRuleContentSha256</code></td>
<td><p>The SHA-256 hash signature for the content of the approval rule.
You can retrieve this information by using
<code>get_pull_request</code>.</p></td>
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

    svc$update_approval_rule_template_content(
      approvalRuleTemplateName = "string",
      newRuleContent = "string",
      existingRuleContentSha256 = "string"
    )
