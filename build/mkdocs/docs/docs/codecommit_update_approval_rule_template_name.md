<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_approval_rule_template_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name of a specified approval rule template

### Description

Updates the name of a specified approval rule template.

### Usage

    codecommit_update_approval_rule_template_name(
      oldApprovalRuleTemplateName, newApprovalRuleTemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_approval_rule_template_name_:_oldApprovalRuleTemplateName">oldApprovalRuleTemplateName</code></td>
<td><p>[required] The current name of the approval rule
template.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_approval_rule_template_name_:_newApprovalRuleTemplateName">newApprovalRuleTemplateName</code></td>
<td><p>[required] The new name you want to apply to the approval rule
template.</p></td>
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

    svc$update_approval_rule_template_name(
      oldApprovalRuleTemplateName = "string",
      newApprovalRuleTemplateName = "string"
    )
