<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_services_in_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the Amazon Web Services that you can choose to include in your assessment

### Description

Returns a list of all of the Amazon Web Services that you can choose to
include in your assessment. When you [create an
assessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_CreateAssessment.html),
specify which of these services you want to include to narrow the
assessment's
[scope](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Scope.html).

### Usage

    auditmanager_get_services_in_scope()

### Value

A list with the following syntax:

    list(
      serviceMetadata = list(
        list(
          name = "string",
          displayName = "string",
          description = "string",
          category = "string"
        )
      )
    )

### Request syntax

    svc$get_services_in_scope()
