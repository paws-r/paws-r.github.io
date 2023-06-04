<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_associate_approval_rule_template_with_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between an approval rule template and a specified repository

### Description

Creates an association between an approval rule template and a specified
repository. Then, the next time a pull request is created in the
repository where the destination reference (if specified) matches the
destination reference (branch) for the pull request, an approval rule
that matches the template conditions is automatically created for that
pull request. If no destination references are specified in the
template, an approval rule that matches the template contents is created
for all pull requests in that repository.

### Usage

    codecommit_associate_approval_rule_template_with_repository(
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
id="codecommit_associate_approval_rule_template_with_repository_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name for the approval rule template.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_associate_approval_rule_template_with_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that you want to associate
with the template.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_approval_rule_template_with_repository(
      approvalRuleTemplateName = "string",
      repositoryName = "string"
    )
