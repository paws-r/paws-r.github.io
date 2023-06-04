<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_disassociate_approval_rule_template_from_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between a template and a repository so that approval rules based on the template are not automatically created when pull requests are created in the specified repository

### Description

Removes the association between a template and a repository so that
approval rules based on the template are not automatically created when
pull requests are created in the specified repository. This does not
delete any approval rules previously created for pull requests through
the template association.

### Usage

    codecommit_disassociate_approval_rule_template_from_repository(
      approvalRuleTemplateName, repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_disassociate_approval_rule_template_from_repository_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the approval rule template to disassociate
from a specified repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_disassociate_approval_rule_template_from_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository you want to disassociate
from the template.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_approval_rule_template_from_repository(
      approvalRuleTemplateName = "string",
      repositoryName = "string"
    )
