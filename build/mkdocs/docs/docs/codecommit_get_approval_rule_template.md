<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_approval_rule_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specified approval rule template

### Description

Returns information about a specified approval rule template.

### Usage

    codecommit_get_approval_rule_template(approvalRuleTemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_approval_rule_template_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template for which you
want to get information.</p></td>
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

    svc$get_approval_rule_template(
      approvalRuleTemplateName = "string"
    )
