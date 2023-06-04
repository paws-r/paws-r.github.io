<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_batch_disassociate_approval_rule_template_from_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between an approval rule template and one or more specified repositories

### Description

Removes the association between an approval rule template and one or
more specified repositories.

### Usage

    codecommit_batch_disassociate_approval_rule_template_from_repositories(
      approvalRuleTemplateName, repositoryNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_batch_disassociate_approval_rule_template_from_repositories_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the template that you want to disassociate
from one or more repositories.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_batch_disassociate_approval_rule_template_from_repositories_:_repositoryNames">repositoryNames</code></td>
<td><p>[required] The repository names that you want to disassociate
from the approval rule template.</p>
<p>The length constraint limit is for each string in the array. The
array itself can be empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      disassociatedRepositoryNames = list(
        "string"
      ),
      errors = list(
        list(
          repositoryName = "string",
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_disassociate_approval_rule_template_from_repositories(
      approvalRuleTemplateName = "string",
      repositoryNames = list(
        "string"
      )
    )
