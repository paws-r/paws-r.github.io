<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_delete_approval_rule_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified approval rule template

### Description

Deletes a specified approval rule template. Deleting a template does not
remove approval rules on pull requests already created with the
template.

### Usage

    codecommit_delete_approval_rule_template(approvalRuleTemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_delete_approval_rule_template_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvalRuleTemplateId = "string"
    )

### Request syntax

    svc$delete_approval_rule_template(
      approvalRuleTemplateName = "string"
    )
