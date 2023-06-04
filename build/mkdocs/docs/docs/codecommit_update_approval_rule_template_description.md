<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_approval_rule_template_description</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description for a specified approval rule template

### Description

Updates the description for a specified approval rule template.

### Usage

    codecommit_update_approval_rule_template_description(
      approvalRuleTemplateName, approvalRuleTemplateDescription)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_approval_rule_template_description_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the template for which you want to update
the description.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_approval_rule_template_description_:_approvalRuleTemplateDescription">approvalRuleTemplateDescription</code></td>
<td><p>[required] The updated description of the approval rule
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

    svc$update_approval_rule_template_description(
      approvalRuleTemplateName = "string",
      approvalRuleTemplateDescription = "string"
    )
