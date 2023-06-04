<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_batch_associate_approval_rule_template_with_repositories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between an approval rule template and one or more specified repositories

### Description

Creates an association between an approval rule template and one or more
specified repositories.

### Usage

    codecommit_batch_associate_approval_rule_template_with_repositories(
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
id="codecommit_batch_associate_approval_rule_template_with_repositories_:_approvalRuleTemplateName">approvalRuleTemplateName</code></td>
<td><p>[required] The name of the template you want to associate with
one or more repositories.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_batch_associate_approval_rule_template_with_repositories_:_repositoryNames">repositoryNames</code></td>
<td><p>[required] The names of the repositories you want to associate
with the template.</p>
<p>The length constraint limit is for each string in the array. The
array itself can be empty.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      associatedRepositoryNames = list(
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

    svc$batch_associate_approval_rule_template_with_repositories(
      approvalRuleTemplateName = "string",
      repositoryNames = list(
        "string"
      )
    )
